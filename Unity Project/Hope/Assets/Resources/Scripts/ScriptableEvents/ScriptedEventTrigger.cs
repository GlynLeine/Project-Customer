using UnityEngine;
using System.Collections;

public class ScriptedEventTrigger : MonoBehaviour
{
    public ScriptedEvent scriptedEvent;
    private ScriptedEvent prevScriptedEvent;
    private void OnValidate()
    {
        if (scriptedEvent != null)
        {
            scriptedEvent.parent = this;
            prevScriptedEvent = scriptedEvent;
        }
        else if(prevScriptedEvent != null)
        {
            prevScriptedEvent.parent = null;
            prevScriptedEvent = null;
        }
    }

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }
}
