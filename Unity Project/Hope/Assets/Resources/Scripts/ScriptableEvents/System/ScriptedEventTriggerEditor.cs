#if UNITY_EDITOR
using UnityEditor;
 
[CanEditMultipleObjects]
[CustomEditor(typeof(ScriptedEventTrigger), true)]
public class ScriptedEventTriggerEditor : Editor
{
}
#endif