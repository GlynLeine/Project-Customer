using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using System.Collections.Generic;

[CreateAssetMenu(fileName = "New Dialogue", menuName = "Scriptable Event/Event Type/Dialogue")]
public class DialogueEvent : ScriptedEventType
{
    [HideInInspector, SerializeField]
    public List<Dialogue> dialogue;

    private Queue<Dialogue> dialogueQueue;
    private Dialogue currentDialogue;
    private Queue<string> sentenceQueue;


    [HideInInspector]
    public UnityEvent OnStartDialogue;

    [HideInInspector]
    public UnityEvent OnStartSentence;

    [HideInInspector]
    public UnityEvent OnDialogueFinished;

    [HideInInspector]
    public UnityEvent OnSentenceFinished;

    private Text dialogueText;
    private Text npcName;
    private RawImage npcSpriteLeft;
    private RawImage npcSpriteRight;

    private Button nextDialogue;

    public override void Execute()
    {
        if (dialogueText == null || npcName == null)
            foreach (Text text in FindObjectsOfType<Text>())
                switch (text.name)
                {
                    case "DialogueText":
                        dialogueText = text;
                        break;
                    case "NPCName":
                        npcName = text;
                        break;
                }

        if (npcSpriteLeft == null || npcSpriteRight == null)
            foreach (RawImage image in FindObjectsOfType<RawImage>())
                switch (image.name)
                {
                    case "NPCLeft":
                        npcSpriteLeft = image;
                        break;
                    case "NPCRight":
                        npcSpriteRight = image;
                        break;
                }

        if (nextDialogue == null)
            foreach (Button button in FindObjectsOfType<Button>())
                if (button.name == "NextDialogue")
                {
                    nextDialogue = button;
                    nextDialogue.onClick.AddListener(Execute);
                }

        if (dialogueQueue == null || dialogueQueue.Count == 0)
        {
            dialogueQueue = new Queue<Dialogue>();
            foreach (Dialogue dialogueObject in dialogue)
            {
                dialogueQueue.Enqueue(dialogueObject.Copy());
            }
        }

        if (currentDialogue == null || sentenceQueue == null || sentenceQueue.Count == 0)
        {
            currentDialogue = dialogueQueue.Dequeue();

            if (currentDialogue.waitForNextTrigger)
                nextDialogue.enabled = false;
            else
                nextDialogue.enabled = true;

            if (currentDialogue.NPCLeft)
            {
                npcName.alignment = TextAnchor.UpperLeft;
                npcSpriteLeft.texture = currentDialogue.NPCSprite;
                npcSpriteLeft.enabled = true;
                npcSpriteRight.enabled = false;
                npcSpriteLeft.SetNativeSize();
            }
            else
            {
                npcName.alignment = TextAnchor.UpperRight;
                npcSpriteRight.texture = currentDialogue.NPCSprite;
                npcSpriteLeft.enabled = false;
                npcSpriteRight.enabled = true;
                npcSpriteRight.SetNativeSize();
            }

            npcName.text = currentDialogue.NPCName;

            sentenceQueue = new Queue<string>(currentDialogue.sentences);
        }

        if (dialogueText != null)
        {
            dialogueText.text = sentenceQueue.Dequeue();
        }
    }
}