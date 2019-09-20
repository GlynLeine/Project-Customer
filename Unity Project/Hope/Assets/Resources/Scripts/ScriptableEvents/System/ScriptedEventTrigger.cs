using UnityEngine;
using System.Reflection;
using System.Collections;
using System;

public class ScriptedEventTrigger : MonoBehaviour
{
    public ScriptedEvent scriptedEvent;
    private ScriptedEvent prevScriptedEvent;

    bool sceneStart = true;
    bool firstFrame = true;

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
        sceneStart = true;
        firstFrame = true;
        scriptedEvent.Setup();

        foreach (EventTrigger trigger in scriptedEvent.eventTriggers)
        {
            trigger.triggered = false;
        }
    }


    bool HandleCompareTrigger(int compareValue, CompareMode compareMode)
    {
        switch (compareMode)
        {
            case CompareMode.Equal:
                return compareValue == 0;
            case CompareMode.GreaterThan:
                return compareValue > 0;
            case CompareMode.GreaterThanOrEqual:
                return compareValue >= 0;
            case CompareMode.LessThan:
                return compareValue < 0;
            case CompareMode.LessThanOrEqual:
                return compareValue <= 0; ;
        }
        return false;
    }

    // Update is called once per frame
    void Update()
    {
        if (firstFrame)
        {
            firstFrame = false;
            return;
        }

        if (LevelMasterScript.paused)
            return;

        int triggeredCount = 0;
        foreach (EventTrigger trigger in scriptedEvent.eventTriggers)
        {
            switch (trigger.triggerType)
            {
                case TriggerType.SceneStart:
                    if (!sceneStart)
                        break;

                    if (scriptedEvent.triggerMode == TriggerMode.And && !trigger.triggered)
                        triggeredCount++;
                    else if (!trigger.triggered)
                    {
                        trigger.triggered = true;
                        scriptedEvent.Trigger();
                    }
                    break;
                case TriggerType.ComponentValue:
                    if (trigger.valueType != null && trigger.triggerValue != null && trigger.triggeringComponentType != null)
                    {
                        Type componentType = Type.GetType(trigger.triggeringComponentType);
                        Component triggeringComponent = null;

                        BindingFlags bindingFlags = BindingFlags.NonPublic | BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static;
                        FieldInfo componentValueField = componentType.GetField(trigger.fieldName, bindingFlags);

                        foreach (Component component in FindObjectsOfType(componentType))
                        {
                            if (component.name == trigger.triggeringComponentName)
                            {
                                triggeringComponent = component;
                                break;
                            }
                        }

                        Type valueType = Type.GetType(trigger.valueType);

                        object componentValue;
                        if (componentValueField.IsStatic)
                            componentValue = componentValueField.GetValue(null);
                        else
                            componentValue = componentValueField.GetValue(triggeringComponent);

                        int compareValue = Comparer.DefaultInvariant.Compare(Convert.ChangeType(componentValue, valueType), Convert.ChangeType(trigger.triggerValue, valueType));
                        if (HandleCompareTrigger(compareValue, trigger.compareMode))
                        {
                            if (scriptedEvent.triggerMode == TriggerMode.And && !trigger.triggered)
                                triggeredCount++;
                            else if (!trigger.triggered)
                            {
                                trigger.triggered = true;
                                scriptedEvent.Trigger();
                            }
                        }
                    }
                    break;
                case TriggerType.TimeInLevel:
                    {
                        int compareValue = Comparer.DefaultInvariant.Compare(StatManager.timeInLevel, trigger.triggerTime);
                        if (HandleCompareTrigger(compareValue, trigger.compareMode))
                        {
                            if (scriptedEvent.triggerMode == TriggerMode.And && !trigger.triggered)
                                triggeredCount++;
                            else if (!trigger.triggered)
                            {
                                trigger.triggered = true;
                                scriptedEvent.Trigger();
                            }
                        }
                    }
                    break;
            }
            sceneStart = false;
        }
        if (triggeredCount == scriptedEvent.eventTriggers.Count && StatManager.timeInLevel >= 0)
        {
            foreach (EventTrigger trigger in scriptedEvent.eventTriggers)
                trigger.triggered = true;
            scriptedEvent.Trigger();
        }
    }
}
