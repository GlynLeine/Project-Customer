using UnityEngine;

[CreateAssetMenu(fileName = "New Interactable Type", menuName = "Level Objects/Interactable Type")]
public class InteractableType : ScriptableObject
{
    [HideInInspector]
    public int ID;
    public int score;
    public float damage;
    public float buoyancy;
    public GameObject model;
    public AudioClip hitSound;

    private void Awake()
    {
        string temp = model.ToString();
        temp += score.ToString();
        temp += damage.ToString();
        temp += buoyancy.ToString();
        ID = Hash128.Compute(temp).GetHashCode();
    }
}
