using UnityEngine;
using System.Reflection;
using System.Collections;
using System;

public class ScriptedEventTrigger : MonoBehaviour
{
    public ScriptedEvent scriptedEvent;
    private ScriptedEvent prevScriptedEvent;

    FieldInfo scriptValueField;
    Component triggeringComponent;
    Type valueType;
    bool sceneStart = true;

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
        scriptedEvent.Setup();

        foreach (EventTrigger trigger in scriptedEvent.eventTriggers)
        {
            trigger.triggered = false;

            switch (trigger.triggerType)
            {
                case TriggerType.ScriptValue:
                    Type componentType = Type.GetType(trigger.triggeringComponentType);
                    triggeringComponent = null;

                    BindingFlags bindingFlags = BindingFlags.NonPublic | BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static;
                    scriptValueField = componentType.GetField(trigger.fieldName, bindingFlags);

                    if (!scriptValueField.IsStatic)
                        foreach (Component component in FindObjectsOfType(componentType))
                        {
                            if (component.name == trigger.triggeringComponentName)
                            {
                                triggeringComponent = component;
                                break;
                            }
                        }

                    valueType = Type.GetType(trigger.valueType);

                    break;
            }
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
        if (LevelMasterScript.paused)
            return;

        if (scriptedEvent.name == "Tutorial Event 1" && sceneStart)
            Debug.Log("SceneStart " + scriptedEvent.name + " " + LevelManager.CurrentLevel);

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
                case TriggerType.ScriptValue:
                    if (trigger.valueType != null && trigger.triggerValue != null && trigger.triggeringComponentType != null)
                    {
                        int compareValue = Comparer.DefaultInvariant.Compare(Convert.ChangeType(scriptValueField.GetValue(triggeringComponent), valueType), Convert.ChangeType(trigger.triggerValue, valueType));
                        if (HandleCompareTrigger(compareValue, trigger.compareMode))
                        {
                            if (scriptedEvent.name == "Tutorial Event 1" && sceneStart)
                                Debug.Log("ScriptValue " + scriptedEvent.name + " " + trigger.fieldName);
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
                            if (scriptedEvent.name == "Tutorial Event 1" && sceneStart)
                                Debug.Log("TimeInLevel " + scriptedEvent.name + " " + trigger.triggerTime);
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
