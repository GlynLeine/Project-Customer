using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using UnityEngine;
using UnityEngine.UI;

public class ImageChanger : MonoBehaviour
{
    [SerializeField] private Sprite ScreenZero;
    [SerializeField] private Sprite ScreenOne;
    [SerializeField] private Sprite ScreenTwo;
    [SerializeField] private Sprite ScreenThree;
    [SerializeField] private Sprite ScreenFour;
    [SerializeField] private Sprite ScreenFive;

    private Image image;
    
    void Start()
    {
        image = GetComponent<Image>();
        if (5 > StatManager.levelUnlocked)
        {
            image.sprite = ScreenFive;
        }
        if (10 > StatManager.levelUnlocked && StatManager.levelUnlocked >= 5)
        {
            image.sprite = ScreenFour;
        }

        if (15 > StatManager.levelUnlocked && StatManager.levelUnlocked >= 10)
        {
            image.sprite = ScreenThree;
        }

        if (20 > StatManager.levelUnlocked && StatManager.levelUnlocked >= 15)
        {
            image.sprite = ScreenTwo;
        }

        if (25 > StatManager.levelUnlocked && StatManager.levelUnlocked >= 20)
        {
            image.sprite = ScreenOne;
        }

        if (StatManager.levelUnlocked >= 25)
        {
            image.sprite = ScreenZero;
        }
    }
}
