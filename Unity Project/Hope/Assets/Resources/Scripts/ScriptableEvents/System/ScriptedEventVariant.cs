using UnityEngine;
using System.Collections.Generic;

[CreateAssetMenu(fileName = "New Scripted Event Variant", menuName = "Scriptable Event/Event Variant")]
public class ScriptedEventVariant : ScriptedEvent
{
    [HideInInspector]
    public ScriptedEvent source;

    public void UpdateSource()
    {
        if (source != null)
        {
            eventType = source.eventType;
            eventTriggers = new List<EventTrigger>();
            foreach (EventTrigger eventTrigger in source.eventTriggers)
            {
                eventTriggers.Add(eventTrigger.Copy());
            }
        }
        else
        {
            eventType = null;
            eventTriggers = null;
        }
    }
}