using System;
using UnityEngine;

public class Waves : MonoBehaviour
{
    //Public Properties
    public bool updateInEditor;
    public int dimension = 10;
    public float uvScale = 2f;
    public Octave[] octaves;
    public float resolution = 1;

    //Mesh
    protected MeshFilter meshFilter;
    protected Mesh mesh;

    private float spaceBetweenVertices = 1f;
    private int verticesPerSide = 2;

    private bool setupMesh = true;

    private void OnValidate()
    {
        if (resolution <= 0)
            resolution = 1;

        if(updateInEditor)
            setupMesh = true;
    }

    // Start is called before the first frame update
    void Start()
    {
        SetupMesh();
    }

    void SetupMesh()
    {
        spaceBetweenVertices = dimension / resolution;
        verticesPerSide = Mathf.RoundToInt(dimension / spaceBetweenVertices) + 1;

        //Mesh Setup
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

    void UpdateMesh()
    {
        if(mesh == null || mesh.vertexCount == 0)
            SetupMesh();

        Vector3[] verts = mesh.vertices;
        for (float x = 0; x <= dimension; x += spaceBetweenVertices)
        {
            for (float z = 0; z <= dimension; z += spaceBetweenVertices)
            {
                float y = 0f;
                for (int o = 0; o < octaves.Length; o++)
                {
                    if (octaves[o].alternate)
                    {
                        float perl = Mathf.PerlinNoise((x * octaves[o].scale.x) / dimension, (z * octaves[o].scale.y) / dimension) * Mathf.PI * 2f;
                        y += Mathf.Cos(perl + octaves[o].speed.magnitude * Time.time) * octaves[o].height;
                    }
                    else
                    {
                        float perl = Mathf.PerlinNoise((x * octaves[o].scale.x + Time.time * octaves[o].speed.x) / dimension, (z * octaves[o].scale.y + Time.time * octaves[o].speed.y) / dimension) - 0.5f;
                        y += perl * octaves[o].height;
                    }
                }
                verts[index(x, z)] = new Vector3(x, y, z);
            }
        }
        mesh.vertices = verts;
        mesh.RecalculateNormals();
    }

    private void OnDrawGizmos()
    {
        if (updateInEditor)
            UpdateMesh();

        if(setupMesh)
        {
            SetupMesh();
            setupMesh = false;
        }
    }

    // Update is called once per frame
    void Update()
    {
        UpdateMesh();
    }

    [Serializable]
    public struct Octave
    {
        public Vector2 speed;
        public Vector2 scale;
        public float height;
        public bool alternate;
    }
}
