using UnityEngine;

[CreateAssetMenu(fileName = "New Level Type", menuName = "Level Management/Level Type")]
public class LevelType : ScriptableObject
{
    public float hazardSpawnRateIncrease;
    public int TrashToCollect;
    public SpawnInfo[] spawnables;
    public Material oceanMaterial;
    public Material skyBoxMaterial;
    public AudioClip levelMusic;
}
