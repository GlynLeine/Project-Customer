using UnityEngine;
using UnityEngine.Events;
using System.Collections.Generic;

[CreateAssetMenu(fileName = "New Dialogue", menuName = "Scriptable Event/Event Type/Dialogue")]
public class DialogueEvent : ScriptedEventType
{
    [HideInInspector]
    public List<Dialogue> dialogue;

    [HideInInspector]
    public UnityEvent OnStartDialogue;

    [HideInInspector]
    public UnityEvent OnStartSentence;

    [HideInInspector]
    public UnityEvent OnDialogueFinished;

    [HideInInspector]
    public UnityEvent OnSentenceFinished;

    private DialogueText dialogueText;
    private NPCName npcName;
    private NPCSprite npcSpriteLeft;
    private NPCSprite npcSpriteRight;

    public override void Execute()
    {
        if (dialogueText == null)
            dialogueText = FindObjectOfType<DialogueText>();
    }
}