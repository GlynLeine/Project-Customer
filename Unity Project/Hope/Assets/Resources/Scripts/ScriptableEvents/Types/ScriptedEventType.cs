using UnityEngine;
using System.Collections.Generic;
using System;

public abstract class ScriptedEventType : ScriptableObject
{
    public abstract void Setup();
    public abstract void Execute();
}