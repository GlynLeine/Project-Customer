using UnityEngine;
using UnityEditor;
using UnityEngine.Events;

[CustomEditor(typeof(DialogueEvent))]
public class DialogueEventEditor : Editor
{
    bool showEvents;

    SerializedProperty OnSentenceFinished;
    SerializedProperty OnDialogueFinished;

    private void OnEnable()
    {
        OnSentenceFinished = serializedObject.FindProperty("OnSentenceFinished");
        OnDialogueFinished = serializedObject.FindProperty("OnDialogueFinished");
    }

    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();

        showEvents = EditorGUILayout.Foldout(showEvents, "Events");
        if (showEvents)
        {
            EditorGUI.indentLevel++;
            EditorGUILayout.PropertyField(OnSentenceFinished);
            EditorGUILayout.PropertyField(OnDialogueFinished);
            EditorGUI.indentLevel--;
        }
    }
}

[CreateAssetMenu(fileName = "New Dialogue", menuName = "Scriptable Event/Event Type/Dialogue")]
public class DialogueEvent : ScriptedEventType
{
    public Dialogue[] dialogue;

    [HideInInspector]
    public UnityEvent OnSentenceFinished;

    [HideInInspector]
    public UnityEvent OnDialogueFinished;

    public override void Execute()
    {

    }
}