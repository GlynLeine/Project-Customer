using UnityEngine;
using System;
using System.Collections.Generic;
using System.Reflection;

public enum EventType
{
    Dialogue
}

[Serializable]
public class EventTrigger
{
    public MonoBehaviour triggeringComponent;
    public FieldInfo field;
    public string value;
}

[Serializable]
public class TypedTrigger<T> : EventTrigger
{
    public new T value;

    public TypedTrigger(EventTrigger source)
    {
        triggeringComponent = source.triggeringComponent;
        field = source.field;
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
}

[CreateAssetMenu(fileName = "New Scripted Event", menuName = "Scripted Event")]
public class ScriptedEvent : ScriptableObject
{
    public static string[] supportedTypes = { nameof(Boolean), nameof(Single), nameof(Int32), nameof(String) };

    public EventType eventType;
    [SerializeField, HideInInspector]
    public List<EventTrigger> eventTriggers;
}
