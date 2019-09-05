using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatMovement : MonoBehaviour
{
    public LayerMask movementCollisionMask;

    private Plane oceanPlane;
    private new Rigidbody rigidbody;

    private Vector3 lastTargetPosition;
    private Vector3 targetPosition;

    private Plane[] cameraViewFrustum;

    void Start()
    {
        cameraViewFrustum = GeometryUtility.CalculateFrustumPlanes(Camera.main);

        for (int i = 0; i < 6; ++i)
        {
            GameObject p = GameObject.CreatePrimitive(PrimitiveType.Plane);
            p.name = "Plane " + i.ToString();
            p.transform.localScale = new Vector3(10, 10, 10);
            p.transform.position = -cameraViewFrustum[i].normal * cameraViewFrustum[i].distance;
            p.transform.rotation = Quaternion.FromToRotation(Vector3.up, cameraViewFrustum[i].normal);
            p.AddComponent<MeshCollider>();
            p.layer = LayerMask.NameToLayer("Invisible Wall");
        }

        oceanPlane = new Plane(Vector3.up, Vector3.zero);
        rigidbody = GetComponent<Rigidbody>();
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
            Vector3 movement = targetPosition - currentPosition;

            RaycastHit hitInfo;
            if (!Physics.Raycast(currentPosition, movement.normalized, out hitInfo, movement.magnitude, movementCollisionMask))
            {
                rigidbody.MovePosition(targetPosition);
            }
            else
            {
                Vector3 movementNormal = Quaternion.AngleAxis(-90, Vector3.up) * hitInfo.normal;
                movement = Vector3.Project(movement, movementNormal);

                if (!Physics.Raycast(currentPosition, movement.normalized, movement.magnitude, movementCollisionMask))
                {
                    rigidbody.MovePosition(currentPosition + movement);
                }
            }
        }
    }
}
