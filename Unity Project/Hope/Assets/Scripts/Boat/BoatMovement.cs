using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatMovement : MonoBehaviour
{
    private Plane oceanPlane;
    private new Rigidbody rigidbody;

    private Vector3 lastTargetPosition;
    private Vector3 currentTargetPosition;

    private bool move = true;

    void Start()
    {
        oceanPlane = new Plane(Vector3.up, Vector3.zero);
        rigidbody = GetComponent<Rigidbody>();
    }

    private void OnCollisionStay(Collision collision)
    {
        move = false;
    }

    private void FixedUpdate()
    {
        move = true;
    }

    void Update()
    {
        float entryPoint;
        Ray mouseToOceanRay = Camera.main.ScreenPointToRay(Input.mousePosition);
        if (oceanPlane.Raycast(mouseToOceanRay, out entryPoint))
        {
            lastTargetPosition = currentTargetPosition;
            currentTargetPosition = mouseToOceanRay.GetPoint(entryPoint);

            Vector3 currentPosition = rigidbody.position;
            if (move)
            {
                if ((lastTargetPosition - currentPosition).magnitude < 1)
                    rigidbody.MovePosition(currentTargetPosition);
                else
                    rigidbody.MovePosition(currentTargetPosition);
            }
            else if (Vector3.Distance(lastTargetPosition, currentPosition) < Vector3.Distance(currentTargetPosition, currentPosition))
                rigidbody.MovePosition(currentPosition + (currentTargetPosition - lastTargetPosition));
        }
    }
}
