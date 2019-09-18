#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;

[CustomEditor(typeof(Dialogue))]
public class DialogueEditor : Editor
{
    SerializedProperty sentenceProperty;
    Dialogue dialogue;

    private void OnEnable()
    {
        sentenceProperty = serializedObject.FindProperty("sentences");
    }

    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();

        if (sentenceProperty.isExpanded)
        {
            if (GUILayout.Button("Add sentence"))
                sentenceProperty.arraySize = sentenceProperty.arraySize + 1;

            if (GUILayout.Button("Remove last sentence"))
                sentenceProperty.DeleteArrayElementAtIndex(sentenceProperty.arraySize - 1);
        }
    }
}
#endif