using UnityEngine;

[CreateAssetMenu(fileName = "New Interactable Type", menuName = "Level Objects/Interactable Type")]
public class InteractableType : ScriptableObject
{
    public int score;
    public float damage;
    public float buoyancy;
    public GameObject model;
}
