using System;
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
    [HideInInspector]
    public bool shieldActive = false;

    private Vector3 lastTargetPosition;
    private Vector3 targetPosition;
    private Vector3 velocity;

    private Plane[] cameraViewFrustum;

    private int trash = 0;
    private Text trashScoreBoard;
    //private Text debugText;
    private GameObject model;

    private MeshRenderer shieldRenderer;

    bool updateBoatType = true;

    [SerializeField] private AudioSource collisionAudio = null;
    [SerializeField] private AudioSource engineAudio = null;

    Vector3 gyroCalibration;

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

    public void CalibrateGyro()
    {
        Quaternion gyroRotation = Input.gyro.attitude;

        Vector3 right = gyroRotation * Vector3.right;
        Vector3 up = gyroRotation * Vector3.up;

        gyroCalibration = new Vector3(right.z, 0, up.z);
    }

    void Start()
    {
        UpdateBoatType();
        CalibrateGyro();

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
            //else if (uiText.name == "Debug")
            //{
            //    debugText = uiText;
            //}
        }

        if (shieldRenderer == null)
            foreach (MeshRenderer meshRenderer in GetComponentsInChildren<MeshRenderer>())
                if (meshRenderer.gameObject.tag == "Shield")
                {
                    shieldRenderer = meshRenderer;
                    break;
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

                if (StatManager.timeInLevel <= 3.5f)
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

                if (shieldActive)
                    return;

                if (floatingObjectScript.damage > 0)
                {
                    health -= floatingObjectScript.damage;
                    StatManager.healthLost += floatingObjectScript.damage;
                    StatManager.healthLostInLevel += floatingObjectScript.damage;
                }

                if (trash >= trashCapacity)
                    SceneManager.LoadScene("Assets/Scenes/UI/ScoreScreen.unity");

                trashScoreBoard.text = trash + "/" + trashCapacity;
            }
        }
    }

    void Update()
    {
        //debugText.text = "fps: " + (1f / Time.deltaTime) + "\nGyroSensitivity: " + StatManager.gyroSensitivity;

        if (LevelMasterScript.paused)
        {
            rigidbody.isKinematic = true;
            return;
        }
        else
        {
            rigidbody.isKinematic = false;
        }

        if (health <= 0)
            SceneManager.LoadScene("Assets/Scenes/UI/GameOver.unity");

        MoveBoat();
    }

    void GetInput(Vector3 currentPosition)
    {
        if (StatManager.useGyro)
        {
            Quaternion gyroRotation = Input.gyro.attitude;

            Vector3 right = gyroRotation * Vector3.right;
            Vector3 up = gyroRotation * Vector3.up;

            Vector3 gyroMovement = (new Vector3(-right.z, 0, -up.z) + gyroCalibration) * StatManager.gyroSensitivity;
            if (gyroMovement.x <= 1 && gyroMovement.x >= -1)
                gyroMovement.x = 0;
            if (gyroMovement.z <= 1 && gyroMovement.z >= -1)
                gyroMovement.z = 0;

            //debugText.text += "\n" + gyroMovement + "\n" + gyroMovement.normalized * acceleration;

            if (gyroMovement.magnitude > 0)
                velocity += gyroMovement.normalized * acceleration;

            if (velocity.sqrMagnitude > (maximumMovementSpeed * maximumMovementSpeed))
                velocity = velocity.normalized * maximumMovementSpeed;

            velocity *= Time.deltaTime;

        }
        else
        {
#if UNITY_EDITOR
            Ray inputToOceanRay = Camera.main.ScreenPointToRay(Input.mousePosition);
#else
            if (Input.touchCount <= 0)
                return;

            Ray inputToOceanRay = Camera.main.ScreenPointToRay(Input.GetTouch(0).position);
#endif

            float entryPoint;
            if (oceanPlane.Raycast(inputToOceanRay, out entryPoint))
            {
                lastTargetPosition = targetPosition;
                targetPosition = inputToOceanRay.GetPoint(entryPoint);
            }

            targetPosition.y = currentPosition.y;

            Vector3 movement = targetPosition - currentPosition;
            if (movement.magnitude > 0)
                velocity += movement.normalized * acceleration;
            else
                return;

            velocity.y = 0;

            float targetDistance = Vector3.Distance(targetPosition, currentPosition);

            if (velocity.sqrMagnitude > (maximumMovementSpeed * maximumMovementSpeed))
                velocity = velocity.normalized * maximumMovementSpeed;

            velocity *= Time.deltaTime;

            if (velocity.sqrMagnitude > (targetDistance * targetDistance))
                velocity = (targetPosition - currentPosition) * 0.33333f;
        }

        velocity.y = 0;
    }

    void MoveBoat()
    {
        Vector3 currentPosition = rigidbody.position;
        GetInput(currentPosition);

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

    void sheild()
    {

        if (shieldActive)
            shieldRenderer.enabled = true;
        else
            shieldRenderer.enabled = false;
    }

}
