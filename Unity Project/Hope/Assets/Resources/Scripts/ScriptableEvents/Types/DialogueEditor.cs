#if UNITY_EDITOR
using UnityEditor;

[CustomEditor(typeof(DialogueEvent))]
public class DialogueEventEditor : Editor
{
    bool showEvents;

    SerializedProperty OnStartDialogue;
    SerializedProperty OnStartSentence;
    SerializedProperty OnDialogueFinished;
    SerializedProperty OnSentenceFinished;

    private void OnEnable()
    {
        OnStartDialogue = serializedObject.FindProperty("OnStartDialogue");
        OnStartSentence = serializedObject.FindProperty("OnStartSentence");
        OnDialogueFinished = serializedObject.FindProperty("OnDialogueFinished");
        OnSentenceFinished = serializedObject.FindProperty("OnSentenceFinished");
    }

    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();

        showEvents = EditorGUILayout.Foldout(showEvents, "Events");
        if (showEvents)
        {
            EditorGUI.indentLevel++;
            EditorGUILayout.PropertyField(OnStartDialogue);
            EditorGUILayout.PropertyField(OnStartSentence);
            EditorGUILayout.PropertyField(OnDialogueFinished);
            EditorGUILayout.PropertyField(OnSentenceFinished);
            EditorGUI.indentLevel--;
        }
    }
}
#endif