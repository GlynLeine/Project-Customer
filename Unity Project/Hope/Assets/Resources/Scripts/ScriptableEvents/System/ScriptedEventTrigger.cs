using UnityEngine;
using System.Reflection;
using System;

public class ScriptedEventTrigger : MonoBehaviour
{
    public ScriptedEvent scriptedEvent;
    private ScriptedEvent prevScriptedEvent;

    FieldInfo scriptValueField;

    private void OnValidate()
    {
        if (scriptedEvent != null)
        {
            scriptedEvent.parent = this;
            prevScriptedEvent = scriptedEvent;
        }
        else if (prevScriptedEvent != null)
        {
            prevScriptedEvent.parent = null;
            prevScriptedEvent = null;
        }
    }

    private void Start()
    {
        foreach (EventTrigger trigger in scriptedEvent.eventTriggers)
        {
            switch (trigger.triggerType)
            {
                case TriggerType.SceneStart:
                    scriptedEvent.Trigger();
                    break;
                case TriggerType.ScriptValue:
                    scriptValueField = trigger.triggeringComponent.GetType().GetField(trigger.fieldName);
                    break;
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        foreach (EventTrigger trigger in scriptedEvent.eventTriggers)
        {
            switch (trigger.triggerType)
            {
                case TriggerType.ScriptValue:
                    if (trigger.valueType != null && trigger.triggerValue != null && trigger.triggeringComponent != null)
                        if (Convert.ChangeType(scriptValueField.GetValue(trigger.triggeringComponent), trigger.valueType) == Convert.ChangeType(trigger.triggerValue, trigger.valueType))
                        {
                            scriptedEvent.Trigger();
                        }
                    break;
                case TriggerType.TimeInLevel:
                    if (StatManager.timeInLevel >= trigger.triggerTime)
                        scriptedEvent.Trigger();
                    break;
            }
        }
    }
}
