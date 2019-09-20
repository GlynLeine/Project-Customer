#if UNITY_EDITOR
using UnityEditor;
 
[CanEditMultipleObjects]
[CustomEditor(typeof(ScriptedEventTrigger))]
public class ScriptedEventTriggerEditor : Editor
{
}
#endif