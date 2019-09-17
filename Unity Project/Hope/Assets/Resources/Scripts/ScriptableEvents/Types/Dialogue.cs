using UnityEngine;
using UnityEngine.Events;
using System;

[Serializable]
public struct Dialogue
{
    public bool waitForNextTrigger;
    public Texture NPCSprite;
    public string name;
    [TextArea(3, 10)]
    public string[] sentences;
}

[CreateAssetMenu(fileName = "New Dialogue", menuName = "Scriptable Event/Event Type/Dialogue")]
public class DialogueEvent : ScriptedEventType
{
    public Dialogue[] dialogue;

    [HideInInspector]
    public UnityEvent OnStartDialogue;

    [HideInInspector]
    public UnityEvent OnStartSentence;

    [HideInInspector]
    public UnityEvent OnDialogueFinished;

    [HideInInspector]
    public UnityEvent OnSentenceFinished;

    public override void Execute()
    {

    }
}