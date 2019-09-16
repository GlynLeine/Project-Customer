using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class Waves : MonoBehaviour
{
    //Public Properties
    #region Inputs
    public bool updateInEditor;
    public int dimension = 10;
    public float uvScale = 2f;
    public Octave[] octaves;
    public int resolution = 1;

    public int refreshRate = 20;

    public bool vertexUpdate;
    public bool vertexCompute;
    public bool normalCompute;
    #endregion

    #region Readables
    [HideInInspector]
    public BoatScript boat;

    public float maxOceanHeight
    {
        get;
        private set;
    }

    [Serializable]
    public struct Octave
    {
        public Vector2 speed;
        public Vector2 scale;
        public float height;
        public int alternate;
    }
    #endregion

    #region Privates
    //Mesh
    private MeshFilter meshFilter;
    private Mesh mesh;

    private float spaceBetweenVertices = 1f;
    private int verticesPerSide = 2;

    private bool setupMesh = true;

    private float timeSinceLastMeshUpdate;
    #endregion

    #region Compute Shader
    private ComputeShader computeShader;
    private int waveKernel;
    private int calcNormalsKernal;
    private int normalizeNormalsKernel;

    private ComputeBuffer vertexBuffer;
    private ComputeBuffer normalBuffer;
    private ComputeBuffer triangleBuffer;
    private ComputeBuffer octaveBuffer;
    #endregion

    void Setup()
    {
        spaceBetweenVertices = dimension / (resolution - 1);
        verticesPerSide = Mathf.RoundToInt(dimension / spaceBetweenVertices) + 1;

        #region Mesh Setup
        if (mesh == null)
        {
            mesh = new Mesh();
            mesh.name = gameObject.name;

            mesh.vertices = GenerateVerts();
            mesh.triangles = GenerateTries();
            mesh.uv = GenerateUVs();
            mesh.RecalculateNormals();
            mesh.RecalculateBounds();

            meshFilter = gameObject.GetComponent<MeshFilter>();
            meshFilter.mesh = mesh;
        }
        #endregion

        maxOceanHeight = 0;

        #region Compute shader Setup
        computeShader = Resources.Load<ComputeShader>("Scripts/Water Shader/OceanCompute");
        waveKernel = computeShader.FindKernel("CSWaves");
        calcNormalsKernal = computeShader.FindKernel("CSCalcNormals");
        normalizeNormalsKernel = computeShader.FindKernel("CSNormalizeNormals");

        computeShader.SetFloat("dimension", dimension);
        computeShader.SetInt("resolution", resolution);

        if (vertexBuffer == null)
            vertexBuffer = new ComputeBuffer(mesh.vertexCount, sizeof(float) * 3);

        if (normalBuffer == null)
            normalBuffer = new ComputeBuffer(mesh.vertexCount, sizeof(float) * 3);

        if (triangleBuffer == null)
            triangleBuffer = new ComputeBuffer(mesh.triangles.Length, sizeof(uint) * 3);

        if (octaveBuffer == null)
        {
            int hypotheticalStride = System.Runtime.InteropServices.Marshal.SizeOf<Octave>();
            octaveBuffer = new ComputeBuffer(octaves.Length, hypotheticalStride);
        }

        vertexBuffer.SetData(mesh.vertices);
        normalBuffer.SetData(new Vector3[mesh.vertexCount]);
        triangleBuffer.SetData(mesh.triangles);
        octaveBuffer.SetData(octaves);

        computeShader.SetBuffer(waveKernel, "vertices", vertexBuffer);
        computeShader.SetBuffer(waveKernel, "octaves", octaveBuffer);

        computeShader.SetBuffer(calcNormalsKernal, "vertices", vertexBuffer);
        computeShader.SetBuffer(calcNormalsKernal, "triangles", triangleBuffer);
        computeShader.SetBuffer(calcNormalsKernal, "normals", normalBuffer);

        computeShader.SetBuffer(normalizeNormalsKernel, "normals", normalBuffer);
        #endregion
    }

    #region In Editor
    private void OnValidate()
    {
        if(resolution > 200)
            resolution = 200;
        resolution = Mathf.RoundToInt(resolution / 8f) * 8;

        if (resolution < 8)
            resolution = 8;

        if (updateInEditor)
            setupMesh = true;
    }

    private void OnDrawGizmos()
    {
        if (setupMesh)
        {
            Setup();
            setupMesh = false;
        }

        if (updateInEditor)
            UpdateMeshCompute();
    }
    #endregion

    #region Mesh Generation
    public float GetHeightQuick(Vector3 position)
    {
        //scale factor and position in local space
        Vector3 scale = new Vector3(1 / transform.lossyScale.x, 0, 1 / transform.lossyScale.z);
        Vector3 localPos = Vector3.Scale(position - transform.position, scale);

        localPos.x = Mathf.Clamp(localPos.x, 0, dimension);
        localPos.z = Mathf.Clamp(localPos.z, 0, dimension);

        float height = mesh.vertices[index(localPos.x, localPos.z)].y;
        return height * transform.lossyScale.y;
    }

    public float GetHeight(Vector3 position)
    {
        //scale factor and position in local space
        Vector3 scale = new Vector3(1 / transform.lossyScale.x, 0, 1 / transform.lossyScale.z);
        Vector3 localPos = Vector3.Scale(position - transform.position, scale);

        //get edge points
        Vector3 p1 = new Vector3(Mathf.Floor(localPos.x), 0, Mathf.Floor(localPos.z));
        Vector3 p2 = new Vector3(Mathf.Floor(localPos.x), 0, Mathf.Ceil(localPos.z));
        Vector3 p3 = new Vector3(Mathf.Ceil(localPos.x), 0, Mathf.Floor(localPos.z));
        Vector3 p4 = new Vector3(Mathf.Ceil(localPos.x), 0, Mathf.Ceil(localPos.z));

        //clamp if the position is outside the plane
        p1.x = Mathf.Clamp(p1.x, 0, dimension);
        p1.z = Mathf.Clamp(p1.z, 0, dimension);
        p2.x = Mathf.Clamp(p2.x, 0, dimension);
        p2.z = Mathf.Clamp(p2.z, 0, dimension);
        p3.x = Mathf.Clamp(p3.x, 0, dimension);
        p3.z = Mathf.Clamp(p3.z, 0, dimension);
        p4.x = Mathf.Clamp(p4.x, 0, dimension);
        p4.z = Mathf.Clamp(p4.z, 0, dimension);

        //get the max distance to one of the edges and take that to compute max - dist
        float max = Mathf.Max(Vector3.Distance(p1, localPos), Vector3.Distance(p2, localPos), Vector3.Distance(p3, localPos), Vector3.Distance(p4, localPos) + Mathf.Epsilon);
        float dist = (max - Vector3.Distance(p1, localPos))
                   + (max - Vector3.Distance(p2, localPos))
                   + (max - Vector3.Distance(p3, localPos))
                   + (max - Vector3.Distance(p4, localPos) + Mathf.Epsilon);
        //weighted sum
        float height = mesh.vertices[index(p1.x, p1.z)].y * (max - Vector3.Distance(p1, localPos))
                     + mesh.vertices[index(p2.x, p2.z)].y * (max - Vector3.Distance(p2, localPos))
                     + mesh.vertices[index(p3.x, p3.z)].y * (max - Vector3.Distance(p3, localPos))
                     + mesh.vertices[index(p4.x, p4.z)].y * (max - Vector3.Distance(p4, localPos));

        //scale
        return height * transform.lossyScale.y / dist;

    }

    private Vector3[] GenerateVerts()
    {
        Vector3[] verts = new Vector3[verticesPerSide * verticesPerSide];

        //equaly distributed verts
        for (float x = 0; x <= dimension; x += spaceBetweenVertices)
            for (float z = 0; z <= dimension; z += spaceBetweenVertices)
                verts[index(x, z)] = new Vector3(x, 0, z);

        return verts;
    }

    private int[] GenerateTries()
    {
        int[] tries = new int[mesh.vertices.Length * 6];

        //two triangles are one tile
        for (float x = 0; x < dimension; x += spaceBetweenVertices)
        {
            for (float z = 0; z < dimension; z += spaceBetweenVertices)
            {
                tries[index(x, z) * 6 + 0] = index(x, z);
                tries[index(x, z) * 6 + 1] = index(x + spaceBetweenVertices, z + spaceBetweenVertices);
                tries[index(x, z) * 6 + 2] = index(x + spaceBetweenVertices, z);
                tries[index(x, z) * 6 + 3] = index(x, z);
                tries[index(x, z) * 6 + 4] = index(x, z + spaceBetweenVertices);
                tries[index(x, z) * 6 + 5] = index(x + spaceBetweenVertices, z + spaceBetweenVertices);
            }
        }

        return tries;
    }

    private Vector2[] GenerateUVs()
    {
        Vector2[] uvs = new Vector2[mesh.vertices.Length];

        //always set one uv over n tiles than flip the uv and set it again
        for (float x = 0; x <= dimension; x += spaceBetweenVertices)
        {
            for (float z = 0; z <= dimension; z += spaceBetweenVertices)
            {
                Vector2 vec = new Vector2((x / uvScale) % 2, (z / uvScale) % 2);
                uvs[index(x, z)] = new Vector2(vec.x <= 1 ? vec.x : 2 - vec.x, vec.y <= 1 ? vec.y : 2 - vec.y);
            }
        }

        return uvs;
    }

    private int index(float x, float z)
    {
        int ret = Mathf.RoundToInt((x / spaceBetweenVertices) * (dimension / spaceBetweenVertices + 1) + (z / spaceBetweenVertices));
        return ret;
    }
    #endregion

    #region Mesh Update
    void UpdateMesh()
    {
        Vector3[] verts = mesh.vertices;
        for (float x = 0; x <= dimension; x += spaceBetweenVertices)
        {
            for (float z = 0; z <= dimension; z += spaceBetweenVertices)
            {
                float y = 0f;
                for (int o = 0; o < octaves.Length; o++)
                {
                    if (octaves[o].alternate > 0)
                    {
                        float perl = Mathf.PerlinNoise((x * octaves[o].scale.x) / dimension, (z * octaves[o].scale.y) / dimension) * Mathf.PI * 2f;
                        y += (Mathf.Cos(perl + octaves[o].speed.magnitude * Time.time) / 2f + 1f) * octaves[o].height;
                    }
                    else
                    {
                        float perl = Mathf.PerlinNoise((x * octaves[o].scale.x + Time.time * octaves[o].speed.x) / dimension, (z * octaves[o].scale.y + Time.time * octaves[o].speed.y * (boat != null ? boat.boatSpeed : 0.5f)) / dimension);
                        y += perl * octaves[o].height;
                    }
                }
                verts[index(x, z)] = new Vector3(x, y, z);
            }
        }
        mesh.vertices = verts;
        mesh.RecalculateNormals();
    }

    void UpdateMeshCompute()
    {
        timeSinceLastMeshUpdate += Time.deltaTime;
        if (timeSinceLastMeshUpdate < 1f / refreshRate)
        {
            return;
        }

        timeSinceLastMeshUpdate = 0;

        if (computeShader == null || normalBuffer == null || vertexBuffer == null || triangleBuffer == null)
            Setup();

        //normalBuffer.SetData(new Vector3[mesh.vertexCount]);

        computeShader.SetFloat("time", Time.time);
        computeShader.SetFloat("boatSpeed", (boat == null ? 0.5f : boat.boatSpeed));
        computeShader.SetInt("resolution", resolution);

        int vertexDispatchGroupSize = resolution / 8;

        if (vertexUpdate)
            if (vertexCompute)
            {
                computeShader.Dispatch(waveKernel, vertexDispatchGroupSize, vertexDispatchGroupSize, 1);

                Vector3[] vertices = new Vector3[vertexBuffer.count];
                vertexBuffer.GetData(vertices);
                mesh.vertices = vertices;
            }
            else
            {
                Vector3[] verts = mesh.vertices;
                for (float x = 0; x <= dimension; x += spaceBetweenVertices)
                {
                    for (float z = 0; z <= dimension; z += spaceBetweenVertices)
                    {
                        float y = 0f;
                        for (int o = 0; o < octaves.Length; o++)
                        {
                            if (octaves[o].alternate > 0)
                            {
                                float perl = Mathf.PerlinNoise((x * octaves[o].scale.x) / dimension, (z * octaves[o].scale.y) / dimension) * Mathf.PI * 2f;
                                y += (Mathf.Cos(perl + octaves[o].speed.magnitude * Time.time) / 2f + 1f) * octaves[o].height;
                            }
                            else
                            {
                                float perl = Mathf.PerlinNoise((x * octaves[o].scale.x + Time.time * octaves[o].speed.x) / dimension, (z * octaves[o].scale.y + Time.time * octaves[o].speed.y * (boat != null ? boat.boatSpeed : 0.5f)) / dimension);
                                y += perl * octaves[o].height;
                            }
                        }
                        verts[index(x, z)] = new Vector3(x, y, z);
                    }
                }
                mesh.vertices = verts;
                if (normalCompute)
                    vertexBuffer.SetData(verts);
            }

        if (normalCompute)
        {
            computeShader.Dispatch(calcNormalsKernal, triangleBuffer.count, 1, 1);
            computeShader.Dispatch(normalizeNormalsKernel, vertexDispatchGroupSize, vertexDispatchGroupSize, 1);

            Vector3[] normals = new Vector3[normalBuffer.count];
            normalBuffer.GetData(normals);
            mesh.SetNormals(normals.ToList());
        }
        else
        {
            mesh.RecalculateNormals();
        }
    }
    #endregion

    #region Runtime
    // Start is called before the first frame update
    void Start()
    {
        Setup();
    }

    // Update is called once per frame
    void Update()
    {
        UpdateMeshCompute();
    }
    #endregion
}
