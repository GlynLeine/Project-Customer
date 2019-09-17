#if UNITY_EDITOR
using System.Linq;
using System.Reflection;
using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

[CustomEditor(typeof(ScriptedEvent))]
class ScriptedEventEditor : Editor
{
    List<bool> foldOuts = new List<bool>();
    Component[] components;
    List<string> componentNames;

    ScriptedEvent scriptedEvent;
    int noneIndex;

    //private GameObject draggedObj;
    //void OnSceneGUI()
    //{
    //    if (Event.current.type == EventType.DragUpdated || Event.current.type == EventType.DragPerform)
    //    {
    //        DragAndDrop.visualMode = DragAndDropVisualMode.Copy;

    //        if (DragAndDrop.objectReferences[0].GetType().IsAssignableFrom(typeof(ScriptedEvent)))
    //        {

    //        }
    //    }
    //}

    public override void OnInspectorGUI()
    {
        scriptedEvent = (ScriptedEvent)target;

        int sizeDiff = foldOuts.Count - scriptedEvent.eventTriggers.Count;
        if (sizeDiff < 0)
        {
            for (int i = 0; i > sizeDiff; i--)
            {
                foldOuts.Add(true);
            }
        }
        else if (sizeDiff > 0)
        {
            for (int i = 0; i < sizeDiff; i++)
            {
                foldOuts.RemoveAt(foldOuts.Count - 1);
            }
        }

        DrawDefaultInspector();

        EditorGUILayout.LabelField("Event Triggers");

        EditorGUI.indentLevel++;

        components = FindObjectsOfType<Component>();
        componentNames = components.Select(s => s.GetType().Name).ToList();
        componentNames.Add("None");

        for (int i = 0; i < scriptedEvent.eventTriggers.Count; i++)
        {
            foldOuts[i] = EditorGUILayout.Foldout(foldOuts[i], "Event Trigger " + i);
            if (!foldOuts[i])
                continue;
            EditorGUI.indentLevel++;

            EventTrigger eventTrigger = scriptedEvent.eventTriggers[i];
            eventTrigger.triggerType = (TriggerType)EditorGUILayout.EnumPopup(eventTrigger.triggerType);

            switch (eventTrigger.triggerType)
            {
                case TriggerType.TimeInLevel:
                    DrawTimeTriggerGUI(eventTrigger);
                    break;
                case TriggerType.ScriptValue:
                    DrawValueTriggerGUI(eventTrigger, i);
                    break;
                default:
                    break;
            }

            EditorGUI.indentLevel--;
        }

        EditorGUI.indentLevel--;

        if (GUILayout.Button("Add event trigger"))
            scriptedEvent.eventTriggers.Add(new EventTrigger());

        if (GUILayout.Button("Remove last event trigger"))
            scriptedEvent.eventTriggers.RemoveAt(scriptedEvent.eventTriggers.Count - 1);

        EditorUtility.SetDirty(scriptedEvent);
    }

    void DrawValueTriggerGUI(EventTrigger eventTrigger, int index)
    {
        if (scriptedEvent.parent == null)
        {
            EditorGUILayout.LabelField("Create Variant and configure in Scene.");
            return;
        }


        int currentIndex = -1;
        if (eventTrigger.triggeringComponent != null)
            currentIndex = componentNames.IndexOf(eventTrigger.triggeringComponent.GetType().Name);

        if (currentIndex < 0)
        {
            noneIndex = componentNames.IndexOf("None");
            currentIndex = noneIndex;
        }

        int newIndex = EditorGUILayout.Popup("Component", currentIndex, componentNames.ToArray());

        if (newIndex >= 0 && newIndex != noneIndex)
        {
            eventTrigger.triggeringComponent = components[newIndex];
        }
        else
            eventTrigger.triggeringComponent = null;

        if (eventTrigger.triggeringComponent != null)
        {
            BindingFlags bindingFlags = BindingFlags.NonPublic | BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static;
            FieldInfo[] fields = eventTrigger.triggeringComponent.GetType().GetFields(bindingFlags).Where(f => ScriptedEvent.supportedTypes.Contains(f.FieldType.Name)).ToArray();
            string[] fieldNames = fields.Select(f => f.Name).ToArray();

            int fieldIndex = EditorGUILayout.Popup("Field", fieldNames.ToList().IndexOf(eventTrigger.fieldName), fieldNames);
            if (fieldIndex >= 0)
            {
                eventTrigger.fieldName = fields[fieldIndex].Name;

                switch (fields[fieldIndex].FieldType.Name)
                {
                    case nameof(Boolean):
                        {
                            TypedTrigger<bool> typedTrigger = eventTrigger as TypedTrigger<bool>;
                            if (typedTrigger == null)
                            {
                                typedTrigger = new TypedTrigger<bool>(eventTrigger);
                                scriptedEvent.eventTriggers[index] = typedTrigger;
                                eventTrigger = scriptedEvent.eventTriggers[index];
                            }
                            typedTrigger.value = EditorGUILayout.Toggle("Boolean Value", typedTrigger.value);
                            eventTrigger.value = typedTrigger.value.ToString();
                        }
                        break;
                    case nameof(Single):
                        {
                            TypedTrigger<float> typedTrigger = eventTrigger as TypedTrigger<float>;
                            if (typedTrigger == null)
                            {
                                typedTrigger = new TypedTrigger<float>(eventTrigger);
                                scriptedEvent.eventTriggers[index] = typedTrigger;
                                eventTrigger = scriptedEvent.eventTriggers[index];
                            }
                            typedTrigger.value = EditorGUILayout.FloatField("Float Value", typedTrigger.value);
                            eventTrigger.value = typedTrigger.value.ToString();
                        }
                        break;
                    case nameof(Int32):
                        {
                            TypedTrigger<int> typedTrigger = eventTrigger as TypedTrigger<int>;
                            if (typedTrigger == null)
                            {
                                typedTrigger = new TypedTrigger<int>(eventTrigger);
                                scriptedEvent.eventTriggers[index] = typedTrigger;
                                eventTrigger = scriptedEvent.eventTriggers[index];
                            }
                            typedTrigger.value = EditorGUILayout.IntField("Integer Value", typedTrigger.value);
                            eventTrigger.value = typedTrigger.value.ToString();
                        }
                        break;
                    case nameof(String):
                        {
                            TypedTrigger<string> typedTrigger = eventTrigger as TypedTrigger<string>;
                            if (typedTrigger == null)
                            {
                                typedTrigger = new TypedTrigger<string>(eventTrigger);
                                scriptedEvent.eventTriggers[index] = typedTrigger;
                                eventTrigger = scriptedEvent.eventTriggers[index];
                            }
                            typedTrigger.value = EditorGUILayout.TextField("String Value", typedTrigger.value);
                            eventTrigger.value = typedTrigger.value.ToString();
                        }
                        break;
                    default:
                        EditorGUILayout.LabelField("Event trigger script value type not supported.");
                        throw new NotSupportedException("Event trigger script value type not supported.");
                }
            }
        }
    }

    void DrawTimeTriggerGUI(EventTrigger eventTrigger)
    {
        eventTrigger.triggerTime = EditorGUILayout.FloatField("Seconds", eventTrigger.triggerTime);
    }

}

#endif