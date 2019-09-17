using UnityEngine;
using System;
using System.Collections.Generic;

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
    public string triggerValue;
    public Type valueType;

    public virtual EventTrigger Copy()
    {
        EventTrigger copy = new EventTrigger();
        copy.triggerType = triggerType;
        copy.triggerTime = triggerTime;
        copy.triggeringComponent = triggeringComponent;
        copy.fieldName = fieldName;
        copy.triggerValue = triggerValue;
        copy.valueType = valueType;

        return copy;
    }
}

[CreateAssetMenu(fileName = "New Scripted Event", menuName = "Scriptable Event/Event")]
public class ScriptedEvent : ScriptableObject
{
    [HideInInspector]
    public Component parent;

    public static string[] supportedTriggerTypes = { nameof(Boolean), nameof(Single), nameof(Int32), nameof(String) };

    public ScriptedEventType eventType;

    public void Trigger() => eventType.Execute();

    [SerializeField, HideInInspector]
    public List<EventTrigger> eventTriggers;
}
