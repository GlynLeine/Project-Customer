using System;
using UnityEngine;

public class FloatingObjectScript : MonoBehaviour
{
    [HideInInspector]
    public BoatScript boat = null;
    [HideInInspector]
    public Waves ocean = null;

    [ReadOnly]
    public int score;
    [ReadOnly]
    public float damage;
    [ReadOnly]
    public float buoyancy;

    private Vector3 velocity;

    // Update is called once per frame
    void Update()
    {
        if (boat == null)
            throw new NullReferenceException("FloatingObjectScript: Boat reference null.");
        if (ocean == null)
            throw new NullReferenceException("FloatingObjectScript: Ocean reference null.");

        Vector3 position = transform.position;
        velocity.z = -(Time.deltaTime * boat.boatSpeed * 9);
        float oceanHeight = ocean.GetHeightQuick(position);
        velocity.y = oceanHeight - position.y;
        velocity.y *= buoyancy;
        transform.position = position + velocity;

        if (transform.position.z < -10)
            Destroy(gameObject);
    }
}
