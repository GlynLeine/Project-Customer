using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using System.Collections.Generic;

public class DialogueBar : MonoBehaviour
{
    private Queue<Dialogue> dialogueQueue;
    private Dialogue currentDialogue;
    private Queue<string> sentenceQueue;

    private Text dialogueText;
    private Text npcName;
    private RawImage npcSpriteLeft;
    private RawImage npcSpriteRight;

    public Button nextDialogue;

    private Queue<bool> trigger;
    private bool button;

    [HideInInspector]
    public bool hasDialogue = false;

    void Start()
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
    }

    public void StartDialogue(List<Dialogue> dialogues)
    {
        dialogueQueue = new Queue<Dialogue>(dialogues);
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
        if (dialogueQueue == null || dialogueQueue.Count == 0)
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


        if (dialogueText != null)
        {
            dialogueText.text = sentenceQueue.Dequeue();
        }
    }
}
