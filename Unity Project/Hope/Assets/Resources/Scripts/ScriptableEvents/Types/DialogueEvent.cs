using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(fileName = "New Dialogue", menuName = "Scriptable Event/Event Type/Dialogue")]
public class DialogueEvent : ScriptedEventType
{
    [HideInInspector, SerializeField]
    public List<Dialogue> dialogues;

    [HideInInspector]
    public UnityEvent OnStartDialogue;

    [HideInInspector]
    public UnityEvent OnStartSentence;

    [HideInInspector]
    public UnityEvent OnDialogueFinished;

    [HideInInspector]
    public UnityEvent OnSentenceFinished;

    DialogueBar dialogueBar;

    public override void Setup()
    {
        if (dialogueBar == null)
            dialogueBar = FindObjectOfType<DialogueBar>();
    }

    public override void Execute()
    {
        if (dialogueBar.hasDialogue)
            dialogueBar.OnTrigger();
        else
            dialogueBar.StartDialogue(dialogues);
    }
}