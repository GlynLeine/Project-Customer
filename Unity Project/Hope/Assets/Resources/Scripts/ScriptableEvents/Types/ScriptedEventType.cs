using UnityEngine;
using System.Collections.Generic;
using System;

public abstract class ScriptedEventType : ScriptableObject
{
    public abstract void Execute();
}

[Serializable]
public struct Dialogue
{
    public string name;
    [TextArea(3, 10)]
    public string[] sentences;
}