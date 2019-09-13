using UnityEngine;
using System;
using System.Collections.Generic;
using System.Reflection;

public enum EventType
{
    Dialogue
}

public enum TriggerType
{
    SceneStart, TimeInLevel, ScriptValue
}

[Serializable]
public class EventTrigger
{
    public TriggerType triggerType;
    public float triggerTime;
    public Component triggeringComponent;
    public string fieldName;
    public string value;

    public virtual EventTrigger Copy()
    {
        EventTrigger copy = new EventTrigger();
        copy.triggerType = triggerType;
        copy.triggerTime = triggerTime;
        copy.triggeringComponent = triggeringComponent;
        copy.fieldName = fieldName;
        copy.value = value;
        return copy;
    }
}

[Serializable]
public class TypedTrigger<T> : EventTrigger
{
    public new T value;

    public TypedTrigger(EventTrigger source)
    {
        triggerType = source.triggerType;
        triggerTime = source.triggerTime;
        triggeringComponent = source.triggeringComponent;
        fieldName = source.fieldName;
        try
        {
            value = (T)Convert.ChangeType(source.value, typeof(T));
        }
        catch (Exception E)
        {
            Debug.Log("Uuuhm, maybe that value isn't right?");
        }
        base.value = source.value;
    }

    public override EventTrigger Copy()
    {
        TypedTrigger<T> copy = new TypedTrigger<T>(this);
        return copy as EventTrigger;
    }
}

[CreateAssetMenu(fileName = "New Scripted Event", menuName = "Scripted Event")]
public class ScriptedEvent : ScriptableObject
{
    [HideInInspector]
    public Component parent;

    public static string[] supportedTypes = { nameof(Boolean), nameof(Single), nameof(Int32), nameof(String) };

    public EventType eventType;
    [SerializeField, HideInInspector]
    public List<EventTrigger> eventTriggers;
}

[CreateAssetMenu(fileName = "New Scripted Event Variant", menuName = "Scripted Event Variant")]
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
            eventType = 0;
            eventTriggers = null;
        }
    }
}
