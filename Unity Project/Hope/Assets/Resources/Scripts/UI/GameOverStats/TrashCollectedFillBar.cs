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
        trashCapacity = LevelManager.levelToLoad.TrashToCollect;
        trash = StatManager.trashCollectedInLevel;

        image.fillAmount = trash / trashCapacity;

    }
}
