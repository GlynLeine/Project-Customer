#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;
using System.Collections.Generic;

[CanEditMultipleObjects]
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
            EditorGUI.indentLevel++;
            DialogueEvent dialogueEvent = target as DialogueEvent;
            for (int i = 0; i < dialogueEvent.dialogue.Count; i++)
            {
                if (dialogueEvent.dialogue[i] == null)
                {
                    if (i >= dialogueEditors.Count)
                    {
                        dialogueEvent.dialogue[i] = CreateInstance<Dialogue>();
                    }
                    else
                    {
                        dialogueEvent.dialogue[i] = dialogueEditors[i].target as Dialogue;
                    }
                }

                if (i >= dialogueEditors.Count)
                    dialogueEditors.Add(CreateEditor(dialogueEvent.dialogue[i]));

                Editor dialogueEditor = dialogueEditors[i];
                CreateCachedEditor(dialogueEvent.dialogue[i], null, ref dialogueEditor);

                EditorGUILayout.LabelField("Dialogue " + i);
                EditorGUI.indentLevel++;
                dialogueEditor.OnInspectorGUI();
                EditorGUI.indentLevel--;
                EditorGUILayout.LabelField("", GUI.skin.horizontalSlider);

                dialogueEditors[i] = dialogueEditor;
                dialogueEvent.dialogue[i] = dialogueEditor.target as Dialogue;
            }
            EditorUtility.SetDirty(dialogueEvent);

            GUILayout.BeginHorizontal();
            GUILayout.Space(EditorGUI.indentLevel * 10);
            if (GUILayout.Button("Add dialogue"))
            {
                Dialogue dialogue = CreateInstance<Dialogue>();
                AssetDatabase.CreateAsset(dialogue, "Assets/Resources/AutoCreated/" + target.name + "_dialogue" + (target as DialogueEvent).dialogue.Count + ".asset");
                (target as DialogueEvent).dialogue.Add(dialogue);
                dialogueEditors.Add(null);
            }
            GUILayout.EndHorizontal();

            if ((target as DialogueEvent).dialogue.Count > 0)
            {
                GUILayout.BeginHorizontal();
                GUILayout.Space(EditorGUI.indentLevel * 10);
                if (GUILayout.Button("Remove last dialogue"))
                {
                    AssetDatabase.DeleteAsset("Assets/Resources/AutoCreated/" + target.name + "_dialogue" + ((target as DialogueEvent).dialogue.Count-1) + ".asset");
                    (target as DialogueEvent).dialogue.RemoveAt((target as DialogueEvent).dialogue.Count - 1);
                }
                GUILayout.EndHorizontal();
            }
            EditorGUI.indentLevel--;
        }

        showEvents = EditorGUILayout.Foldout(showEvents, "Events");
        if (showEvents)
        {
            EditorGUI.indentLevel++;
            GUILayout.BeginHorizontal();
            GUILayout.Space(EditorGUI.indentLevel * 10);
            GUILayout.BeginVertical();
            EditorGUILayout.PropertyField(onStartDialogue);
            EditorGUILayout.PropertyField(onStartSentence);
            EditorGUILayout.PropertyField(onDialogueFinished);
            EditorGUILayout.PropertyField(onSentenceFinished);
            GUILayout.EndVertical();
            GUILayout.EndHorizontal();
            EditorGUI.indentLevel--;
        }
        EditorUtility.SetDirty(target);
        serializedObject.ApplyModifiedProperties();
    }
}
#endif