#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;

[CustomEditor(typeof(DialogueEvent))]
public class DialogueEventEditor : Editor
{
    bool showEvents;

    SerializedProperty onStartDialogue;
    SerializedProperty onStartSentence;
    SerializedProperty onDialogueFinished;
    SerializedProperty onSentenceFinished;
    SerializedProperty dialogueProperty;
    private void OnEnable()
    {
        onStartDialogue = serializedObject.FindProperty("OnStartDialogue");
        onStartSentence = serializedObject.FindProperty("OnStartSentence");
        onDialogueFinished = serializedObject.FindProperty("OnDialogueFinished");
        onSentenceFinished = serializedObject.FindProperty("OnSentenceFinished");
        dialogueProperty = serializedObject.FindProperty("dialogue");
    }

    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();
        if (dialogueProperty.isExpanded)
        {
            if (GUILayout.Button("Add dialogue"))
                (target as DialogueEvent).dialogue.Add(new Dialogue());

            if (GUILayout.Button("Remove last dialogue"))
                (target as DialogueEvent).dialogue.RemoveAt((target as DialogueEvent).dialogue.Count - 1);

            EditorUtility.SetDirty(target);
        }

        showEvents = EditorGUILayout.Foldout(showEvents, "Events");
        if (showEvents)
        {
            EditorGUI.indentLevel++;
            EditorGUILayout.PropertyField(onStartDialogue);
            EditorGUILayout.PropertyField(onStartSentence);
            EditorGUILayout.PropertyField(onDialogueFinished);
            EditorGUILayout.PropertyField(onSentenceFinished);
            EditorGUI.indentLevel--;
        }
    }
}
#endif