#if UNITY_EDITOR
using System;
using UnityEditor;
using UnityEngine;

[CustomEditor(typeof(Dialogue))]
public class DialogueEditor : Editor
{
    SerializedProperty sentenceProperty;
    Dialogue dialogue;

    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();

        if (sentenceProperty == null)
            sentenceProperty = serializedObject.FindProperty("sentences");

        if (sentenceProperty.isExpanded)
        {
            dialogue = target as Dialogue;
            GUILayout.BeginHorizontal();
            GUILayout.Space(EditorGUI.indentLevel * 10);
            if (GUILayout.Button("Add sentence"))
                dialogue.sentences.Add("");
            GUILayout.EndHorizontal();


            if (sentenceProperty.arraySize > 0)
            {
                GUILayout.BeginHorizontal();
                GUILayout.Space(EditorGUI.indentLevel * 10);

                if (GUILayout.Button("Remove last sentence"))
                    dialogue.sentences.RemoveAt(dialogue.sentences.Count - 1);

                GUILayout.EndHorizontal();
            }
        }
        EditorUtility.SetDirty(target);
    }
}
#endif