using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UpgradeBar : MonoBehaviour
{
    public Color color;

    private Image image;

    public int level;
    public Stats stat;

    private void OnValidate()
    {
        image = GetComponent<Image>();
    }

    private void Awake()
    {
        image = GetComponent<Image>();
    }

    private void Update()
    {
        if(StatManager.GetUpgradeLevel(stat) >= level)
        {
            image.color = color;
        }
    }
}
