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

    public override void OnInspectorGUI()
    {
        ScriptedEvent scriptedEvent = (ScriptedEvent)target;
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

        MonoBehaviour[] scripts = FindObjectsOfType<MonoBehaviour>();
        string[] scriptNames = scripts.Select(s => s.GetType().Name).ToArray();

        for (int i = 0; i < scriptedEvent.eventTriggers.Count; i++)
        {
            foldOuts[i] = EditorGUILayout.Foldout(foldOuts[i], "Event Trigger " + i);
            if(!foldOuts[i])
                continue;
            EditorGUI.indentLevel++;

            EventTrigger eventTrigger = scriptedEvent.eventTriggers[i];
            int currentIndex = -1;
            if (eventTrigger.triggeringComponent != null)
                currentIndex = scriptNames.ToList().IndexOf(eventTrigger.triggeringComponent.GetType().Name);

            int newIndex = EditorGUILayout.Popup("Script", currentIndex, scriptNames);

            if (newIndex >= 0)
            {
                eventTrigger.triggeringComponent = scripts[newIndex];
            }

            if (eventTrigger.triggeringComponent != null)
            {
                BindingFlags bindingFlags = BindingFlags.NonPublic | BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static;
                FieldInfo[] fields = eventTrigger.triggeringComponent.GetType().GetFields(bindingFlags).Where(f => ScriptedEvent.supportedTypes.Contains(f.FieldType.Name)).ToArray();
                string[] fieldNames = fields.Select(f => f.Name).ToArray();

                int fieldIndex = EditorGUILayout.Popup("Field", fields.ToList().IndexOf(eventTrigger.field), fieldNames);
                if (fieldIndex >= 0)
                    eventTrigger.field = fields[fieldIndex];
            }

            if (eventTrigger.field != null)
            {
                switch (eventTrigger.field.FieldType.Name)
                {
                    case nameof(Boolean):
                        {
                            TypedTrigger<bool> typedTrigger = eventTrigger as TypedTrigger<bool>;
                            if (typedTrigger == null)
                            {
                                typedTrigger = new TypedTrigger<bool>(eventTrigger);
                                scriptedEvent.eventTriggers[i] = typedTrigger;
                                eventTrigger = scriptedEvent.eventTriggers[i];
                            }
                            typedTrigger.value = EditorGUILayout.Toggle("Value", typedTrigger.value);
                            eventTrigger.value = typedTrigger.value.ToString();
                        }
                        break;
                    case nameof(Single):
                        {
                            TypedTrigger<float> typedTrigger = eventTrigger as TypedTrigger<float>;
                            if (typedTrigger == null)
                            {
                                typedTrigger = new TypedTrigger<float>(eventTrigger);
                                scriptedEvent.eventTriggers[i] = typedTrigger;
                                eventTrigger = scriptedEvent.eventTriggers[i];
                            }
                            typedTrigger.value = EditorGUILayout.FloatField("Value", typedTrigger.value);
                            eventTrigger.value = typedTrigger.value.ToString();
                        }
                        break;
                    case nameof(Int32):
                        {
                            TypedTrigger<int> typedTrigger = eventTrigger as TypedTrigger<int>;
                            if (typedTrigger == null)
                            {
                                typedTrigger = new TypedTrigger<int>(eventTrigger);
                                scriptedEvent.eventTriggers[i] = typedTrigger;
                                eventTrigger = scriptedEvent.eventTriggers[i];
                            }
                            typedTrigger.value = EditorGUILayout.IntField("Value", typedTrigger.value);
                            eventTrigger.value = typedTrigger.value.ToString();
                        }
                        break;
                    case nameof(String):
                        {
                            TypedTrigger<string> typedTrigger = eventTrigger as TypedTrigger<string>;
                            if (typedTrigger == null)
                            {
                                typedTrigger = new TypedTrigger<string>(eventTrigger);
                                scriptedEvent.eventTriggers[i] = typedTrigger;
                                eventTrigger = scriptedEvent.eventTriggers[i];
                            }
                            typedTrigger.value = EditorGUILayout.TextField("Value", typedTrigger.value);
                            eventTrigger.value = typedTrigger.value.ToString();
                        }
                        break;
                    default:
                        throw new NotSupportedException("Event trigger type not supported.");
                }
            }

            EditorGUI.indentLevel--;
        }

        EditorGUI.indentLevel--;

        if (GUILayout.Button("Add event trigger"))
        {
            scriptedEvent.eventTriggers.Add(new EventTrigger());
        }

        if (GUILayout.Button("Remove last event trigger"))
        {
            scriptedEvent.eventTriggers.RemoveAt(scriptedEvent.eventTriggers.Count - 1);
        }

        EditorUtility.SetDirty(target);
    }

}

#endif