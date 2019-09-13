using UnityEngine;

[CreateAssetMenu(fileName = "New Level Order", menuName = "Level Order")]
public class LevelOrder : ScriptableObject
{
    public LevelType[] levels;
}
