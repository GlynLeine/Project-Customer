﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TrashCollectedScript : MonoBehaviour
{
    private Text text;
    private float trashMax;
    private float trashCollected;
    
    void Start()
    {
        text = GetComponent<Text>();
        trashCollected = StatManager.trashCollected;
        trashMax = StatManager.trashCollectedInLevel;
        text.text = "Trash Collected:" + trashCollected + "/" + trashMax;
    }
}