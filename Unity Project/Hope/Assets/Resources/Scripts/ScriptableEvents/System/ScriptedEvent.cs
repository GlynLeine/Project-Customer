﻿using UnityEngine;
using System;
using System.Collections.Generic;

public enum TriggerType
{
    SceneStart, TimeInLevel, ScriptValue
}

public enum TriggerMode
{
    And, Or
}

[Serializable]
public class EventTrigger
{
    public TriggerType triggerType;
    public bool triggered = false;
    public float triggerTime;
    public string triggeringComponentType;
    public string triggeringComponentName;
    public string fieldName;
    public string triggerValue;
    public string valueType;

    public virtual EventTrigger Copy()
    {
        EventTrigger copy = new EventTrigger();
        copy.triggerType = triggerType;
        copy.triggerTime = triggerTime;
        copy.triggeringComponentName = triggeringComponentName;
        copy.triggeringComponentType = triggeringComponentType;
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

    public TriggerMode triggerMode;

    public void Setup() => eventType.Setup();
    public void Trigger() => eventType.Execute();

    [SerializeField, HideInInspector]
    public List<EventTrigger> eventTriggers;
}
