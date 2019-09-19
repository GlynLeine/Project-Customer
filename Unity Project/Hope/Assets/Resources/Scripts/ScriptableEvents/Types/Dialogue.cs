using UnityEngine;
using System.Collections.Generic;

public class Dialogue : ScriptableObject
{
    [SerializeField, Tooltip("If this is True then the dialogue will wait for the next event trigger instead of the user input button for next dialogue.")]
    public bool waitForNextTrigger;
    [SerializeField, Tooltip("If this is True then the NPC sprite will show up on the left side of the dialogue bar, otherwise it will show up on the right.")]
    public bool NPCLeft;
    [SerializeField, Tooltip("The texture used for the NPC next to the dialogue bar.")]
    public Texture NPCSprite;
    [SerializeField, Tooltip("The diaplay name of the NPC next to the sprite.")]
    public string NPCName;
    [SerializeField, TextArea(3, 10), Tooltip("Each sentence is displayed one by one in the dialogue box, it'll either wait for input or a next trigger before the next sentence gets displayed (see Wait For Next Trigger).")]
    public List<string> sentences = new List<string>();

    public Dialogue Copy()
    {
        Dialogue copy = CreateInstance<Dialogue>();
        copy.waitForNextTrigger = waitForNextTrigger;
        copy.NPCLeft = NPCLeft;
        copy.NPCSprite = NPCSprite;
        copy.NPCName = NPCName;
        copy.sentences = sentences;
        return copy;
    }
}