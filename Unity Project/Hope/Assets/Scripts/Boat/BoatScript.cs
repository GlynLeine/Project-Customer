using System.Collections;
using System.Collections.Generic;
using UnityEngine;
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
    [HideInInspector]
    public float health;
    public BoatType boatType;

    private Plane oceanPlane;

    private new Rigidbody rigidbody;
    private MeshFilter meshFilter;
    private MeshRenderer meshRenderer;

    private Vector3 lastTargetPosition;
    private Vector3 targetPosition;
    private Vector3 velocity;

    private Plane[] cameraViewFrustum;

    private int trash = 0;
    private Text trashScoreBoard;

    private void OnValidate()
    {
        meshFilter = GetComponent<MeshFilter>();
        if (meshFilter == null)
            meshFilter = GetComponentInChildren<MeshFilter>();
        if (meshFilter == null)
            meshFilter = gameObject.AddComponent<MeshFilter>();

        meshRenderer = GetComponent<MeshRenderer>();
        if (meshRenderer == null)
            meshRenderer = GetComponentInChildren<MeshRenderer>();
        if (meshRenderer == null)
            meshRenderer = gameObject.AddComponent<MeshRenderer>();

        UpdateBoatType();
    }

    void UpdateBoatType()
    {
        meshFilter.sharedMesh = boatType.model;
        meshRenderer.materials = boatType.materials;
        boatSpeed = boatType.speed;
        maxHealth = boatType.health;
        trashCapacity = boatType.capacity;
        acceleration = boatType.acceleration;
        maximumMovementSpeed = boatType.movementSpeed;
    }

    void Start()
    {
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
            if (uiText.name == "Trash")
                trashScoreBoard = uiText;
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.layer == LayerMask.NameToLayer("Interactable"))
        {
            FloatingObjectScript floatingObjectScript = collision.gameObject.GetComponent<FloatingObjectScript>();
            if (floatingObjectScript != null)
            {
                trash += floatingObjectScript.score;
                trashScoreBoard.text = "Trash Collected: " + trash;
            }

            Destroy(collision.gameObject);
        }
    }

    void Update()
    {
        float entryPoint;
        Ray mouseToOceanRay = Camera.main.ScreenPointToRay(Input.mousePosition);
        if (oceanPlane.Raycast(mouseToOceanRay, out entryPoint))
        {
            lastTargetPosition = targetPosition;
            targetPosition = mouseToOceanRay.GetPoint(entryPoint);

            Vector3 currentPosition = rigidbody.position;

            velocity += (targetPosition - currentPosition).normalized * acceleration;

            float targetDistance = Vector3.Distance(targetPosition, currentPosition);

            if (velocity.sqrMagnitude > maximumMovementSpeed * maximumMovementSpeed)
                velocity = velocity.normalized * maximumMovementSpeed;

            if (velocity.sqrMagnitude > targetDistance)
                velocity = (targetPosition - currentPosition) * 0.33333f;

            RaycastHit hitInfo;
            if (!Physics.Raycast(currentPosition, velocity.normalized, out hitInfo, velocity.magnitude, movementCollisionMask))
            {
                rigidbody.MovePosition(currentPosition + velocity);
            }
            //else
            //{
            //    Vector3 movementNormal = Quaternion.AngleAxis(-90, Vector3.up) * hitInfo.normal;
            //    movement = Vector3.Project(movement, movementNormal);

            //    if (!Physics.Raycast(currentPosition, movement.normalized, movement.magnitude, movementCollisionMask))
            //    {
            //        rigidbody.MovePosition(currentPosition + movement);
            //    }
            //}
        }
    }
}
