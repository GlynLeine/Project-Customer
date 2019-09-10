using UnityEngine;

[CreateAssetMenu(fileName = "New Interactable Type", menuName = "Interactable Type")]
public class InteractableType : ScriptableObject
{
    public int score;
    public float damage;
    public GameObject model;
}
