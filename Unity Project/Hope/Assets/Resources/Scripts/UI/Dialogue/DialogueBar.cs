using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using System.Collections.Generic;

public class DialogueBar : MonoBehaviour
{
    private Queue<Dialogue> dialogueQueue;
    private Dialogue currentDialogue;
    private Queue<string> sentenceQueue;

    private Text dialogueTextLeft;
    private Text npcNameLeft;
    private Text dialogueTextRight;
    private Text npcNameRight;
    private Image dialogueBarLeft;
    private Image dialogueBarRight;
    private RawImage npcSpriteLeft;
    private RawImage npcSpriteRight;

    public Button nextDialogue;

    private Queue<bool> trigger;
    private bool button;

    [HideInInspector]
    public bool hasDialogue = false;

    void Start()
    {
        if (dialogueTextLeft == null || npcNameLeft == null || dialogueTextRight == null || npcNameRight == null)
            foreach (Text text in FindObjectsOfType<Text>())
                switch (text.name)
                {
                    case "DialogueTextLeft":
                        dialogueTextLeft = text;
                        break;
                    case "NPCNameLeft":
                        npcNameLeft = text;
                        break;
                    case "DialogueTextRight":
                        dialogueTextRight = text;
                        break;
                    case "NPCNameRight":
                        npcNameRight = text;
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

        if (dialogueBarLeft == null || dialogueBarRight == null)
            foreach (Image image in FindObjectsOfType<Image>())
                switch (image.name)
                {
                    case "DialogueBarLeft":
                        dialogueBarLeft = image;
                        break;
                    case "DialogueBarRight":
                        dialogueBarRight = image;
                        break;
                }
    }

    public void StartDialogue(List<Dialogue> dialogues)
    {
        dialogueQueue = new Queue<Dialogue>(dialogues);
        sentenceQueue = null;
        currentDialogue = null;
        LevelMasterScript.paused = true;
        hasDialogue = true;
        gameObject.SetActive(true);
    }

    public void OnButtonClick()
    {
        button = true;
    }

    public void OnTrigger()
    {
        if (trigger == null)
            trigger = new Queue<bool>();
        trigger.Enqueue(true);
    }

    // Update is called once per frame
    void Update()
    {
        if (currentDialogue != null)
            if (currentDialogue.waitForNextTrigger)
            {
                if (trigger == null || trigger.Count == 0)
                    return;
                else
                    trigger.Dequeue();
            }
            else
            {
                if (!button)
                    return;
                else
                    button = false;
            }

        if (dialogueQueue == null || (dialogueQueue.Count == 0 && (sentenceQueue == null || sentenceQueue.Count == 0)))
        {
            hasDialogue = false;
            gameObject.SetActive(false);
            LevelMasterScript.paused = false;
            return;
        }

        LevelMasterScript.paused = true;

        if (currentDialogue == null || sentenceQueue == null || sentenceQueue.Count == 0)
        {
            currentDialogue = dialogueQueue.Dequeue();

            if (currentDialogue.waitForNextTrigger)
                nextDialogue.enabled = false;
            else
                nextDialogue.enabled = true;

            if (currentDialogue.NPCLeft)
            {
                npcSpriteLeft.texture = currentDialogue.NPCSprite;

                npcSpriteLeft.enabled = true;
                npcSpriteRight.enabled = false;
                npcNameRight.enabled = false;
                npcNameLeft.enabled = true;
                dialogueTextRight.enabled = false;
                dialogueTextLeft.enabled = true;
                dialogueBarRight.enabled = false;
                dialogueBarLeft.enabled = true;

                npcNameLeft.text = currentDialogue.NPCName;
            }
            else
            {
                npcSpriteRight.texture = currentDialogue.NPCSprite;

                npcSpriteLeft.enabled = false;
                npcSpriteRight.enabled = true;
                npcNameRight.enabled = true;
                npcNameLeft.enabled = false;
                dialogueTextRight.enabled = true;
                dialogueTextLeft.enabled = false;
                dialogueBarRight.enabled = true;
                dialogueBarLeft.enabled = false;

                npcNameRight.text = currentDialogue.NPCName;
            }

            sentenceQueue = new Queue<string>(currentDialogue.sentences);
        }

        if (currentDialogue.NPCLeft)
        {
            if (dialogueTextLeft != null && sentenceQueue.Count > 0)
                dialogueTextLeft.text = sentenceQueue.Dequeue();
        }
        else
        {
            if (dialogueTextRight != null && sentenceQueue.Count > 0)
                dialogueTextRight.text = sentenceQueue.Dequeue();
        }
    }
}
