using UnityEngine;

[CreateAssetMenu(fileName = "New Boat Type", menuName = "Boat Type")]
public class BoatType : ScriptableObject
{
    public float minAcceleration;
    public float maxAcceleration;
    public float minMovementSpeed;
    public float maxMovementSpeed;

    public float minSpeed;
    public float maxSpeed;

    public float minHealth;
    public float maxHealth;

    public float buoyancy;
    public GameObject boatModel;
}
