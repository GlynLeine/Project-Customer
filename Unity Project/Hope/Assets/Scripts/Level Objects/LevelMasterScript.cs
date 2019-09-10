using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class LevelMasterScript : MonoBehaviour
{
    public LevelType levelType = null;

    private SpawnInfo[] spawnables;

    private float hazardSpawnRateIncrease = 10;
    private BoatScript boat = null;
    private bool updateLevelType = true;

    // Start is called before the first frame update
    void OnValidate()
    {
        boat = FindObjectOfType<BoatScript>();
        updateLevelType = true;
    }

    private void OnDrawGizmos()
    {
        if(updateLevelType)
        {
            UpdateLevelType();
            updateLevelType = false;
        }
    }

    private void UpdateLevelType()
    {
        if (levelType == null)
            return;

        hazardSpawnRateIncrease = levelType.hazardSpawnRateIncrease;
        spawnables = new SpawnInfo[levelType.spawnables.Length];
        levelType.spawnables.CopyTo(spawnables, 0);

        Waves ocean = FindObjectOfType<Waves>();
        MeshRenderer oceanRenderer = ocean.GetComponent<MeshRenderer>();
        if (oceanRenderer != null)
            oceanRenderer.material = levelType.oceanMaterial;

        for (int i = 0; i < spawnables.Length; i++)
        {
            spawnables[i].spawnablePrefab.layer = LayerMask.NameToLayer("Interactable");
            spawnables[i].spawnTime = 1f / spawnables[i].spawnRate;
            spawnables[i].floatingObjectScript = spawnables[i].spawnablePrefab.GetComponent<FloatingObjectScript>();
        }
    }

    private void Start()
    {
        List<FloatingObjectScript> spawnedObjects = new List<FloatingObjectScript>();
        float simulatedDeltaTime = 0.5f;
        for (int i = 0; i < 100; i++)
        {
            if (i <= 6)
                spawnedObjects.AddRange(SpawnObjects(simulatedDeltaTime, false) ?? new List<FloatingObjectScript>());
            else
                spawnedObjects.AddRange(SpawnObjects(simulatedDeltaTime) ?? new List<FloatingObjectScript>());
            foreach (FloatingObjectScript spawnedObject in spawnedObjects)
            {
                if(spawnedObject == null)
                    continue;
                spawnedObject.transform.position = spawnedObject.transform.position - (Vector3.forward * simulatedDeltaTime * (boat == null? 1 : boat.boatSpeed) * 3);
            }
        }
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        SpawnObjects();
    }

    private List<FloatingObjectScript> SpawnObjects(float simulatedDeltaTime = -1f, bool spawnHazards = true)
    {
        if(spawnables == null)
            UpdateLevelType();

        if(spawnables == null)
            return null;

        float deltaTime;
        if (simulatedDeltaTime <= 0)
            deltaTime = Time.fixedDeltaTime;
        else
            deltaTime = simulatedDeltaTime;

        List<FloatingObjectScript> spawnedObjects = new List<FloatingObjectScript>();

        for (int i = 0; i < spawnables.Length; i++)
        {
            SpawnInfo spawnInfo = spawnables[i];
            if(spawnInfo.spawnablePrefab == null)
                    continue;

            if (spawnInfo.floatingObjectScript != null && spawnInfo.floatingObjectScript.damage > 0)
            {
                if (!spawnHazards)
                    continue;
                else
                {
                    spawnables[i].spawnRate *= 1f + (0.01f * hazardSpawnRateIncrease);
                    spawnables[i].spawnTime = 1f / spawnables[i].spawnRate;
                }
            }

            float spawnChance = deltaTime / spawnInfo.spawnTime;

            if (UnityEngine.Random.value <= spawnChance)
            {
                GameObject newObject = Instantiate(spawnInfo.spawnablePrefab, transform);
                newObject.transform.position = transform.position + (UnityEngine.Random.Range(-10f, 10f) * Vector3.right);

                FloatingObjectScript floatingObjectScript = newObject.GetComponent<FloatingObjectScript>();
                if (floatingObjectScript == null)
                    floatingObjectScript = newObject.AddComponent<FloatingObjectScript>();

                floatingObjectScript.boat = boat;
                spawnedObjects.Add(floatingObjectScript);
            }
        }

        return spawnedObjects;
    }
}

[Serializable]
public struct SpawnInfo
{
    [Tooltip("Prefab of the object to spawn.")]
    public GameObject spawnablePrefab;
    [Range(0f, 10f), Tooltip("Average amount of objects to spawn per second.")]
    public float spawnRate;

    [HideInInspector]
    public FloatingObjectScript floatingObjectScript;
    [HideInInspector]
    public float spawnTime;
}