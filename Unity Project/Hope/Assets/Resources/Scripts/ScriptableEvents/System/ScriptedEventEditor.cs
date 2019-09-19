#if UNITY_EDITOR
using System.Linq;
using System.Reflection;
using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

[CanEditMultipleObjects]
[CustomEditor(typeof(ScriptedEvent))]
class ScriptedEventEditor : Editor
{
    List<bool> foldOuts = new List<bool>();
    Component[] components;
    List<string> componentNames;

    bool showTriggers = true;

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
        if (scriptedEvent.eventTriggers == null)
            scriptedEvent.eventTriggers = new List<EventTrigger>();
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

        showTriggers = EditorGUILayout.Foldout(showTriggers, "Event Triggers");
        if (showTriggers)
        {
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
                EditorGUILayout.LabelField("", GUI.skin.horizontalSlider);
            }

            EditorGUI.indentLevel--;

            GUILayout.BeginHorizontal();
            GUILayout.Space(EditorGUI.indentLevel * 10);
            if (GUILayout.Button("Add event trigger"))
                scriptedEvent.eventTriggers.Add(new EventTrigger());
            GUILayout.EndHorizontal();

            if (scriptedEvent.eventTriggers.Count > 0)
            {
                GUILayout.BeginHorizontal();
                GUILayout.Space(EditorGUI.indentLevel * 10);
                if (GUILayout.Button("Remove last event trigger"))
                    scriptedEvent.eventTriggers.RemoveAt(scriptedEvent.eventTriggers.Count - 1);
                GUILayout.EndHorizontal();
            }
        }

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
        if (eventTrigger.triggeringComponentType != null)
            currentIndex = componentNames.IndexOf(eventTrigger.triggeringComponentName);

        if (currentIndex < 0)
        {
            noneIndex = componentNames.IndexOf("None");
            currentIndex = noneIndex;
        }

        int newIndex = EditorGUILayout.Popup("Component", currentIndex, componentNames.ToArray());

        if (newIndex >= 0 && newIndex != noneIndex)
        {
            eventTrigger.triggeringComponentName = components[newIndex].name;
            eventTrigger.triggeringComponentType = components[newIndex].GetType().FullName;
        }
        else
            eventTrigger.triggeringComponentType = "";

        Type componentType = Type.GetType(eventTrigger.triggeringComponentType);

        if (componentType != null)
        {
            BindingFlags bindingFlags = BindingFlags.NonPublic | BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static;
            FieldInfo[] fields = componentType.GetFields(bindingFlags).Where(f => ScriptedEvent.supportedTriggerTypes.Contains(f.FieldType.Name)).ToArray();
            string[] fieldNames = fields.Select(f => f.Name).ToArray();

            int fieldIndex = EditorGUILayout.Popup("Field", fieldNames.ToList().IndexOf(eventTrigger.fieldName), fieldNames);
            if (fieldIndex >= 0)
            {
                eventTrigger.fieldName = fields[fieldIndex].Name;

                switch (fields[fieldIndex].FieldType.Name)
                {
                    case nameof(Boolean):
                        {
                            bool parsedValue;
                            if (bool.TryParse(eventTrigger.triggerValue, out parsedValue))
                                eventTrigger.triggerValue = EditorGUILayout.Toggle("Boolean Value", parsedValue).ToString();
                            else
                                eventTrigger.triggerValue = EditorGUILayout.Toggle("Boolean Value", false).ToString();
                            eventTrigger.valueType = typeof(bool).FullName;
                            eventTrigger.compareMode = CompareMode.Equal;
                        }
                        break;
                    case nameof(Single):
                        {
                            eventTrigger.compareMode = (CompareMode)EditorGUILayout.EnumPopup("Compare Mode", eventTrigger.compareMode);

                            float parsedValue;
                            if (float.TryParse(eventTrigger.triggerValue, out parsedValue))
                                eventTrigger.triggerValue = EditorGUILayout.FloatField("Float Value", parsedValue).ToString();
                            else
                                eventTrigger.triggerValue = EditorGUILayout.FloatField("Float Value", 0f).ToString();
                            eventTrigger.valueType = typeof(float).FullName;
                        }
                        break;
                    case nameof(Int32):
                        {
                            eventTrigger.compareMode = (CompareMode)EditorGUILayout.EnumPopup("Compare Mode", eventTrigger.compareMode);

                            int parsedValue;
                            if (int.TryParse(eventTrigger.triggerValue, out parsedValue))
                                eventTrigger.triggerValue = EditorGUILayout.IntField("Integer Value", parsedValue).ToString();
                            else
                                eventTrigger.triggerValue = EditorGUILayout.IntField("Integer Value", 0).ToString();
                            eventTrigger.valueType = typeof(int).FullName;
                        }
                        break;
                    case nameof(String):
                        eventTrigger.triggerValue = EditorGUILayout.TextField("String Value", eventTrigger.triggerValue);
                        eventTrigger.valueType = typeof(string).FullName;
                        eventTrigger.compareMode = CompareMode.Equal;
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
        eventTrigger.compareMode = (CompareMode)EditorGUILayout.EnumPopup("Compare Mode", eventTrigger.compareMode);
        eventTrigger.triggerTime = EditorGUILayout.FloatField("Seconds", eventTrigger.triggerTime);
    }

}

#endif