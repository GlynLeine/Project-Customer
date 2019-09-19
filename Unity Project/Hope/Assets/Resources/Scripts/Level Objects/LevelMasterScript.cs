using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class LevelMasterScript : MonoBehaviour
{
    public LevelType levelType = null;
    [ReadOnly]
    public SpawnInfo[] spawnables;
    [ReadOnly]
    public float hazardSpawnRateIncrease = 10;

    private BoatScript boat = null;
    private Waves ocean = null;
    private bool updateLevelType = true;

    [HideInInspector]
    public Dictionary<int, Queue<FloatingObjectScript>> reUsableFloatingObjects = new Dictionary<int, Queue<FloatingObjectScript>>();

    // Start is called before the first frame update
    void OnValidate()
    {
        updateLevelType = true;
        boat = FindObjectOfType<BoatScript>();
        ocean = FindObjectOfType<Waves>();
        boat.ocean = ocean;
    }

    private void OnDrawGizmos()
    {
        if (updateLevelType)
        {
            UpdateLevelType();
            updateLevelType = false;
        }
    }

    private void Awake()
    {
        boat = FindObjectOfType<BoatScript>();
        ocean = FindObjectOfType<Waves>();
        boat.ocean = ocean;
    }

    private void UpdateLevelType()
    {
        levelType = LevelManager.levelToLoad;

        if (levelType == null)
            levelType = LevelManager.GetLevelType(0);

        hazardSpawnRateIncrease = levelType.hazardSpawnRateIncrease;
        spawnables = new SpawnInfo[levelType.spawnables.Length];
        levelType.spawnables.CopyTo(spawnables, 0);
        RenderSettings.skybox = levelType.skyBoxMaterial;

        Waves ocean = FindObjectOfType<Waves>();
        MeshRenderer oceanRenderer = ocean.GetComponent<MeshRenderer>();
        if (oceanRenderer != null)
            oceanRenderer.material = levelType.oceanMaterial;

        for (int i = 0; i < spawnables.Length; i++)
        {
            spawnables[i].spawnTime = 1f / spawnables[i].spawnRate;
        }
    }

    private void Start()
    {
        UpdateLevelType();

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
                if (spawnedObject == null)
                    continue;

                if (boat == null)
                    throw new NullReferenceException("LevelMasterScript: Boat reference null.");

                spawnedObject.transform.position = spawnedObject.transform.position - (Vector3.forward * simulatedDeltaTime * boat.boatSpeed * 9);
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
        if (spawnables == null)
            UpdateLevelType();

        if (spawnables == null)
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
            if (spawnInfo.interactableType == null)
                continue;

            if (spawnInfo.interactableType != null && spawnInfo.interactableType.damage > 0)
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
                FloatingObjectScript newFloatingObject = null;
                int interactableID = spawnInfo.interactableType.ID;
                if (reUsableFloatingObjects.ContainsKey(interactableID) && reUsableFloatingObjects[interactableID].Count > 0)
                {
                    newFloatingObject = reUsableFloatingObjects[interactableID].Dequeue();
                    newFloatingObject.gameObject.SetActive(true);
                }
                else
                {
                    GameObject newObject = Instantiate(spawnInfo.interactableType.model, transform);
                    newFloatingObject = newObject.GetComponent<FloatingObjectScript>();
                    if (newFloatingObject == null)
                        newFloatingObject = newObject.AddComponent<FloatingObjectScript>();

                    newFloatingObject.master = this;
                    newFloatingObject.damage = spawnInfo.interactableType.damage;
                    newFloatingObject.score = spawnInfo.interactableType.score;
                    newFloatingObject.buoyancy = spawnInfo.interactableType.buoyancy;
                    newFloatingObject.hitSound = spawnInfo.interactableType.hitSound;
                    newFloatingObject.boat = boat;
                    newFloatingObject.ocean = ocean;
                    newFloatingObject.gameObject.layer = LayerMask.NameToLayer("Interactable");
                }
                newFloatingObject.transform.position = transform.position + (UnityEngine.Random.Range(-10f, 10f) * Vector3.right);

                spawnedObjects.Add(newFloatingObject);
            }
        }

        return spawnedObjects;
    }
}

[Serializable]
public struct SpawnInfo
{
    [Tooltip("Type of the interactable to spawn.")]
    public InteractableType interactableType;
    [Range(0f, 10f), Tooltip("Average amount of objects to spawn per second.")]
    public float spawnRate;

    [HideInInspector]
    public float spawnTime;
}