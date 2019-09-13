using UnityEngine;

[CreateAssetMenu(fileName = "New Level Type", menuName = "Level Type")]
public class LevelType : ScriptableObject
{
    public float hazardSpawnRateIncrease;
    public int TrashToCollect;
    public SpawnInfo[] spawnables;
    public Material oceanMaterial;
}
