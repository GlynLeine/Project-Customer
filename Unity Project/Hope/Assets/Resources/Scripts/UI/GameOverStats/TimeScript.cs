using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TimeScript : MonoBehaviour
{
    private Text text;
    private float time;
    void Start()
    {
        text = GetComponent<Text>();
        time = StatManager.timeInLevel;
        text.text = "Time:" + time;
    }
}
