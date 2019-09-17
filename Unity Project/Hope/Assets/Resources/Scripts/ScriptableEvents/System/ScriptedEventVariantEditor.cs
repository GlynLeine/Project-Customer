#if UNITY_EDITOR
using System.Linq;
using System.Reflection;
using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

[CustomEditor(typeof(ScriptedEventVariant))]
class ScriptedEventVariantEditor : ScriptedEventEditor
{
    public override void OnInspectorGUI()
    {
        EditorGUI.BeginChangeCheck();
        (target as ScriptedEventVariant).source = EditorGUILayout.ObjectField("Source", (target as ScriptedEventVariant).source, typeof(ScriptedEvent), false) as ScriptedEvent;
        if(EditorGUI.EndChangeCheck())
            (target as ScriptedEventVariant).UpdateSource();
        
        if ((target as ScriptedEventVariant).source != null)
            base.OnInspectorGUI();
    }
}

#endif