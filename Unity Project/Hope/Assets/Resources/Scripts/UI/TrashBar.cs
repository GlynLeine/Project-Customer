using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TrashBar : MonoBehaviour
{
    Image image;
    BoatScript boat;
    private float trash;
    private float trashCapacity;
    private float fillAmount;
    private float currentFillAmount;
    [SerializeField] private float fillPerSecond;
    
    void Start()
    {
        boat = FindObjectOfType<BoatScript>();
        image = GetComponent<Image>();
        trashCapacity = LevelManager.levelToLoad.TrashToCollect;
    }

    
    void Update()
    {
        trash = StatManager.trashCollectedInLevel;
        fillAmount = trash / trashCapacity;
        currentFillAmount = image.fillAmount;
        if (currentFillAmount <= fillAmount)
        {
            //how much of the bar per second?
            currentFillAmount += fillPerSecond * Time.deltaTime;
        }

        image.fillAmount = currentFillAmount;

    }
}
