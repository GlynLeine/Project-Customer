#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;
using System.Collections.Generic;

[CustomEditor(typeof(DialogueEvent))]
public class DialogueEventEditor : Editor
{
    bool showEvents;
    bool showDialogue;

    List<Editor> dialogueEditors = new List<Editor>();

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

        showDialogue = EditorGUILayout.Foldout(showDialogue, "Dialogue");
        if (showDialogue)
        {
            DialogueEvent dialogueEvent = target as DialogueEvent;
            for (int i = 0; i < dialogueEvent.dialogue.Count; i++)
            {
                if(dialogueEvent.dialogue[i] == null)
                    dialogueEvent.dialogue[i] = new Dialogue();
                if (i >= dialogueEditors.Count)
                    dialogueEditors.Add(null);

                Editor dialogueEditor = dialogueEditors[i];
                if (dialogueEditor == null)
                    CreateCachedEditor(dialogueEvent.dialogue[i], null, ref dialogueEditor);

                dialogueEditor.OnInspectorGUI();

                dialogueEditors[i] = dialogueEditor;
            }

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