using UnityEngine;

[CreateAssetMenu(fileName = "New Boat Type", menuName = "Boat Type")]
public class BoatType : ScriptableObject
{
    public float health;
    public int capacity;
    public float speed;
    public float acceleration;
    public float movementSpeed;
    public GameObject boatModel;
}
