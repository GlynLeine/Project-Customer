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

    public void Trigger()
    {
        scriptedEvent.Trigger();
    }

    private void Start()
    {
        scriptedEvent.Setup();

        int triggeredCount = 0;
        foreach (EventTrigger trigger in scriptedEvent.eventTriggers)
        {
            trigger.triggered = false;
            switch (trigger.triggerType)
            {
                case TriggerType.SceneStart:
                    if (scriptedEvent.triggerMode == TriggerMode.And)
                        triggeredCount++;
                    else if (!trigger.triggered)
                    {
                        trigger.triggered = true;
                        scriptedEvent.Trigger();
                    }
                    break;
                case TriggerType.ScriptValue:
                    scriptValueField = trigger.triggeringComponent.GetType().GetField(trigger.fieldName);
                    if (trigger.valueType != null && trigger.triggerValue != null && trigger.triggeringComponent != null)
                        if (Convert.ChangeType(scriptValueField.GetValue(trigger.triggeringComponent), trigger.valueType) == Convert.ChangeType(trigger.triggerValue, trigger.valueType))
                            triggeredCount++;
                    break;
                case TriggerType.TimeInLevel:
                    if (StatManager.timeInLevel >= trigger.triggerTime)
                        triggeredCount++;
                    break;
            }
        }
        if (triggeredCount == scriptedEvent.eventTriggers.Count)
            scriptedEvent.Trigger();
    }

    // Update is called once per frame
    void Update()
    {
        if(LevelMasterScript.paused)
            return;

        int triggeredCount = 0;
        foreach (EventTrigger trigger in scriptedEvent.eventTriggers)
        {
            switch (trigger.triggerType)
            {
                case TriggerType.ScriptValue:
                    if (trigger.valueType != null && trigger.triggerValue != null && trigger.triggeringComponent != null)
                        if (Convert.ChangeType(scriptValueField.GetValue(trigger.triggeringComponent), trigger.valueType) == Convert.ChangeType(trigger.triggerValue, trigger.valueType))
                        {
                            if (scriptedEvent.triggerMode == TriggerMode.And)
                                triggeredCount++;
                            else if (!trigger.triggered)
                            {
                                trigger.triggered = true;
                                scriptedEvent.Trigger();
                            }
                        }
                    break;
                case TriggerType.TimeInLevel:
                    if (StatManager.timeInLevel >= trigger.triggerTime)
                    {
                        if (scriptedEvent.triggerMode == TriggerMode.And)
                            triggeredCount++;
                        else if (!trigger.triggered)
                        {
                            trigger.triggered = true;
                            scriptedEvent.Trigger();
                        }
                    }
                    break;
            }
        }
        if (triggeredCount == scriptedEvent.eventTriggers.Count)
            scriptedEvent.Trigger();
    }
}
