#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;
using System.Collections.Generic;

[CanEditMultipleObjects]
[CustomEditor(typeof(DialogueEvent))]
public class DialogueEventEditor : Editor
{
    bool showEvents;
    bool showDialogue = true;

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
        if (!AssetDatabase.IsValidFolder("Assets/Resources/AutoCreated"))
            AssetDatabase.CreateFolder("Assets/Resources", "AutoCreated");
        if (!AssetDatabase.IsValidFolder("Assets/Resources/AutoCreated/" + target.name))
            AssetDatabase.CreateFolder("Assets/Resources/AutoCreated", target.name);
    }

    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();

        showDialogue = EditorGUILayout.Foldout(showDialogue, "Dialogue");
        if (showDialogue)
        {
            EditorGUI.indentLevel++;
            DialogueEvent dialogueEvent = target as DialogueEvent;
            if (dialogueEvent.dialogues == null)
                dialogueEvent.dialogues = new List<Dialogue>();
            for (int i = 0; i < dialogueEvent.dialogues.Count; i++)
            {
                if (dialogueEvent.dialogues[i] == null)
                {
                    if (i >= dialogueEditors.Count)
                    {
                        dialogueEvent.dialogues[i] = CreateInstance<Dialogue>();
                    }
                    else
                    {
                        dialogueEvent.dialogues[i] = dialogueEditors[i].target as Dialogue;
                    }
                }

                if (AssetDatabase.FindAssets("dialogue" + i, new string[] { "Assets/Resources/AutoCreated/" + target.name }).Length == 0)
                    AssetDatabase.CreateAsset(dialogueEvent.dialogues[i], "Assets/Resources/AutoCreated/" + target.name + "/dialogue" + i + ".asset");


                if (i >= dialogueEditors.Count)
                    dialogueEditors.Add(CreateEditor(dialogueEvent.dialogues[i]));

                Editor dialogueEditor = dialogueEditors[i];
                CreateCachedEditor(dialogueEvent.dialogues[i], null, ref dialogueEditor);

                EditorGUILayout.LabelField("Dialogue " + i);
                EditorGUI.indentLevel++;
                dialogueEditor.OnInspectorGUI();
                EditorGUI.indentLevel--;
                EditorGUILayout.LabelField("", GUI.skin.horizontalSlider);

                dialogueEditors[i] = dialogueEditor;
                dialogueEvent.dialogues[i] = dialogueEditor.target as Dialogue;
            }
            EditorUtility.SetDirty(dialogueEvent);

            GUILayout.BeginHorizontal();
            GUILayout.Space(EditorGUI.indentLevel * 10);
            if (GUILayout.Button("Add dialogue"))
            {
                Dialogue dialogue = CreateInstance<Dialogue>();
                AssetDatabase.CreateAsset(dialogue, "Assets/Resources/AutoCreated/" + target.name + "/dialogue" + (target as DialogueEvent).dialogues.Count + ".asset");
                (target as DialogueEvent).dialogues.Add(dialogue);
                dialogueEditors.Add(null);
            }
            GUILayout.EndHorizontal();

            if ((target as DialogueEvent).dialogues.Count > 0)
            {
                GUILayout.BeginHorizontal();
                GUILayout.Space(EditorGUI.indentLevel * 10);
                if (GUILayout.Button("Remove last dialogue"))
                {
                    AssetDatabase.DeleteAsset("Assets/Resources/AutoCreated/" + target.name + "/dialogue" + ((target as DialogueEvent).dialogues.Count - 1) + ".asset");
                    (target as DialogueEvent).dialogues.RemoveAt((target as DialogueEvent).dialogues.Count - 1);
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