using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class LevelMasterScript : MonoBehaviour
{
    public SpawnInfo[] spawnables;

    private BoatScript boat;

    // Start is called before the first frame update
    void OnValidate()
    {
        for (int i = 0; i < spawnables.Length; i++)
        {
            spawnables[i].spawnablePrefab.layer = LayerMask.NameToLayer("Interactable");
            spawnables[i].spawnTime = 1f / spawnables[i].spawnRate;
        }

        boat = FindObjectOfType<BoatScript>();
    }

    private void Start()
    {
        List<FloatingObjectScript> spawnedObjects = new List<FloatingObjectScript>();
        float simulatedDeltaTime = 0.5f;
        for (int i = 0; i < 100; i++)
        {
            spawnedObjects.AddRange(SpawnObjects(simulatedDeltaTime));
            foreach(FloatingObjectScript spawnedObject in spawnedObjects)
            {
                spawnedObject.transform.position = spawnedObject.transform.position - (Vector3.forward * simulatedDeltaTime * boat.boatSpeed * 3);
            }
        }
    }

    // Update is called once per frame
    void FixedUpdate()
    {
       SpawnObjects();
    }

    private List<FloatingObjectScript> SpawnObjects(float simulatedDeltaTime = -1f)
    {
        float deltaTime;
        if (simulatedDeltaTime <= 0)
            deltaTime = Time.fixedDeltaTime;
        else
            deltaTime = simulatedDeltaTime;

        List<FloatingObjectScript> spawnedObjects = new List<FloatingObjectScript>();

        foreach (SpawnInfo spawnInfo in spawnables)
        {
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
    public float spawnTime;
}