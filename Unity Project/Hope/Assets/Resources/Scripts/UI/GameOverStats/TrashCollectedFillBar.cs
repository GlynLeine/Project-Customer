using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TrashCollectedFillBar : MonoBehaviour
{
    Image image;
    BoatScript boat;
    private float trash;
    private float trashCapacity;

    void Start()
    {
        image = GetComponent<Image>();
        trashCapacity = StatManager.trashCollectedInLevel;
        trash = StatManager.trashCollected;

        image.fillAmount = trash / trashCapacity;

    }
}
