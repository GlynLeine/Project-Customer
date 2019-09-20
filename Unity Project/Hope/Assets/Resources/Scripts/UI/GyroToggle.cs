using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GyroToggle : MonoBehaviour
{
    Toggle toggle;

    // Start is called before the first frame update
    void Start()
    {
        toggle = GetComponent<Toggle>();
        toggle.isOn = StatManager.useGyro;
    }

    // Update is called once per frame
    void Update()
    {
        StatManager.useGyro = toggle.isOn;
    }
}
