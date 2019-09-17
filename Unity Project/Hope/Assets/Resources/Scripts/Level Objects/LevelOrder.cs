using UnityEngine;

[CreateAssetMenu(fileName = "New Level Order", menuName = "Level Management/Level Order")]
public class LevelOrder : ScriptableObject
{
    public LevelType[] levels;
}
