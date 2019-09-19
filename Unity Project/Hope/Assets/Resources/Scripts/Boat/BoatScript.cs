﻿using System;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class BoatScript : MonoBehaviour
{
    public LayerMask movementCollisionMask;
    [ReadOnly]
    public float boatSpeed = 1f;
    [ReadOnly]
    public float acceleration;
    [ReadOnly]
    public float maximumMovementSpeed;
    [ReadOnly]
    public int trashCapacity;
    [ReadOnly]
    public float maxHealth;
    [ReadOnly]
    public float buoyancy;

    public BoatType boatType;

    [HideInInspector]
    public float health;
    [HideInInspector]
    public Waves ocean;

    private Plane oceanPlane;
#if UNITY_EDITOR
    private new Rigidbody rigidbody;
#else
    private Rigidbody rigidbody;
#endif

    private Vector3 lastTargetPosition;
    private Vector3 targetPosition;
    private Vector3 velocity;

    private Plane[] cameraViewFrustum;

    private int trash = 0;
    private Text trashScoreBoard;
    private Text debugText;
    private GameObject model;

    bool updateBoatType = true;

    [SerializeField] private AudioSource collisionAudio = null;
    [SerializeField] private AudioSource engineAudio = null;

    Vector2 gyroPosition = new Vector2();
    bool useGyro;

    private void OnValidate()
    {
        updateBoatType = true;
    }

    private void OnDrawGizmos()
    {
        if (updateBoatType)
        {
            updateBoatType = false;
            UpdateBoatType();
        }
    }

    void UpdateBoatType()
    {
        if (boatType == null)
        {
            buoyancy = 0;
            trashCapacity = 0;
            acceleration = 0;
            maximumMovementSpeed = 0;
            boatSpeed = 0;
            maxHealth = 0;
            health = 0;

            return;
        }

        Transform child = transform.Find("Model");
        if (child != null)
            DestroyImmediate(child.gameObject);

        model = Instantiate(boatType.boatModel, transform);
        model.name = "Model";

        ocean.boat = this;

        buoyancy = boatType.buoyancy;
        trashCapacity = LevelManager.levelToLoad.TrashToCollect;
        acceleration = StatManager.GetStat(boatType, Stats.Acceleration);
        maximumMovementSpeed = StatManager.GetStat(boatType, Stats.Movement);
        boatSpeed = StatManager.GetStat(boatType, Stats.BoatSpeed);
        maxHealth = StatManager.GetStat(boatType, Stats.Health);

        health = maxHealth;

        engineAudio.clip = boatType.engineSound;
        engineAudio.Play();
    }

    void Start()
    {
        UpdateBoatType();

        cameraViewFrustum = GeometryUtility.CalculateFrustumPlanes(Camera.main);

        for (int i = 0; i < 3; ++i)
        {
            GameObject plane = GameObject.CreatePrimitive(PrimitiveType.Plane);
            plane.name = "InvisibleWall " + i.ToString();
            plane.transform.localScale = new Vector3(10, 10, 10);
            plane.transform.position = -cameraViewFrustum[i].normal * cameraViewFrustum[i].distance;
            plane.transform.rotation = Quaternion.FromToRotation(Vector3.up, cameraViewFrustum[i].normal);
            Destroy(plane.GetComponent<MeshRenderer>());
            plane.layer = LayerMask.NameToLayer("Invisible Wall");
        }

        oceanPlane = new Plane(Vector3.up, Vector3.zero);
        rigidbody = GetComponent<Rigidbody>();
        foreach (Text uiText in FindObjectsOfType<Text>())
        {
            if (uiText.name == "Trash")
            {
                trashScoreBoard = uiText;
                trashScoreBoard.text = trash + "/" + trashCapacity;
            }
            else if (uiText.name == "Debug")
            {
                debugText = uiText;
            }
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.layer == LayerMask.NameToLayer("Interactable"))
        {
            FloatingObjectScript floatingObjectScript = collision.gameObject.GetComponent<FloatingObjectScript>();
            if (floatingObjectScript != null)
            {
                floatingObjectScript.DisableAndMarkForReuse();

                if (StatManager.timeInLevel <= 4)
                    return;

                if (floatingObjectScript.damage > 0 && StatManager.timeInLevel <= 6 && LevelManager.CurrentLevel == 0)
                    return;

                if (floatingObjectScript.hitSound != null)
                {
                    collisionAudio.clip = floatingObjectScript.hitSound;
                    collisionAudio.Play();
                }

                StatManager.obstaclesHitInLevel++;
                trash += floatingObjectScript.score;
                StatManager.trashCollectedInLevel += floatingObjectScript.score;

                if (floatingObjectScript.damage > 0)
                {
                    health -= floatingObjectScript.damage;
                    StatManager.healthLost += floatingObjectScript.damage;
                    StatManager.healthLostInLevel += floatingObjectScript.damage;

                    if (health <= 0)
                        SceneManager.LoadScene("Assets/Scenes/UI/GameOver.unity");

                }
                if (trash >= trashCapacity)
                    SceneManager.LoadScene("Assets/Scenes/UI/ScoreScreen.unity");

                trashScoreBoard.text = trash + "/" + trashCapacity;
            }
        }
    }

    void Update()
    {
        if (LevelMasterScript.paused)
        {
            rigidbody.isKinematic = true;
            return;
        }
        else
        {
            rigidbody.isKinematic = false;
        }

        debugText.text = "fps: " + (1f / Time.deltaTime) + "\ntarget: " + targetPosition.ToString() + "\nmouse: " + Input.mousePosition.ToString() +
            "\nuseGyro: " + StatManager.UseGyro
            + "\nGyro: " + Input.gyro.attitude.ToString();

        MoveBoat();
    }

    void GetInput()
    {
        float entryPoint;

        Ray inputToOceanRay;

        if (StatManager.UseGyro)
        {
            Quaternion gyroRotation = Input.gyro.attitude;
            gyroRotation = new Quaternion(gyroRotation.x, gyroRotation.y, -gyroRotation.z, -gyroRotation.w);

            Vector3 gyroMovement = gyroRotation * Vector3.up;
            gyroPosition += new Vector2(gyroMovement.x, gyroMovement.z).normalized * StatManager.gyroSensitivity * Time.deltaTime;

#if UNITY_EDITOR
            inputToOceanRay = Camera.main.ScreenPointToRay(Input.mousePosition);
#else
            inputToOceanRay = Camera.main.ScreenPointToRay(gyroPosition);
#endif
        }
        else
        {
#if UNITY_EDITOR
            inputToOceanRay = Camera.main.ScreenPointToRay(Input.mousePosition);
#else
            if (Input.touchCount <= 0)
                return;

            inputToOceanRay = Camera.main.ScreenPointToRay(Input.GetTouch(0).position);
#endif
        }

        if (oceanPlane.Raycast(inputToOceanRay, out entryPoint))
        {
            lastTargetPosition = targetPosition;
            targetPosition = inputToOceanRay.GetPoint(entryPoint);
        }
    }

    void MoveBoat()
    {
        GetInput();

        Vector3 currentPosition = rigidbody.position;
        targetPosition.y = currentPosition.y;

        velocity += (targetPosition - currentPosition).normalized * acceleration;
        velocity.y = 0;

        float targetDistance = Vector3.Distance(targetPosition, currentPosition);

        if (velocity.sqrMagnitude > (maximumMovementSpeed * maximumMovementSpeed))
            velocity = velocity.normalized * maximumMovementSpeed;

        velocity *= Time.deltaTime;

        if (velocity.sqrMagnitude > (targetDistance * targetDistance))
            velocity = (targetPosition - currentPosition) * 0.33333f;

        velocity.y = 0;

        float oceanHeight = ocean.GetHeight(currentPosition);

        velocity.y = oceanHeight - currentPosition.y;
        velocity.y *= buoyancy;

        Vector3 newPosition = currentPosition + velocity;

        RaycastHit hitInfo;
        if (!Physics.Raycast(currentPosition, velocity.normalized, out hitInfo, velocity.magnitude, movementCollisionMask))
        {
            rigidbody.MovePosition(newPosition);
        }

        RotateBoat(oceanHeight, currentPosition);
    }

    void RotateBoat(float oceanHeight, Vector3 currentPosition)
    {
        float frontOceanHeight = ocean.GetHeight(currentPosition + new Vector3(0, 0, 0.8f));

        float deltaHeight = frontOceanHeight - oceanHeight;
        deltaHeight = deltaHeight * 0.9f;

        Vector3 forward = new Vector3(0, deltaHeight, 1).normalized;
        Vector3 up = Vector3.Cross(forward, Vector3.right);
        Quaternion rotation = Quaternion.LookRotation(forward, up);

        rigidbody.MoveRotation(rotation);
    }

}
