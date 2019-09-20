using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class UpgradeManager : MonoBehaviour
{
    [SerializeField] private Text text = null;
    [SerializeField] private Text upgradeText = null;
    [SerializeField] private Image image = null;
    [SerializeField] private GameObject morgan = null;
    private int upgradeChoice;
    private int upgradesLeft = 1;
    private float fillAmount = 1;

    public bool healthAvailability;
    public bool maneuverabilityAvailability;
    public bool speedAvailability;

    private void Start()
    {
        upgradeText.text = "Upgrades Left: " + upgradesLeft;
    }

    public void Maneuverability()
    {
        text.text = "Do you want to increase the steering of your ship?";
        upgradeChoice = 0;
    }
    
    public void BoatSpeed()
    {
        text.text = "Do you want to increase the speed of your ship?";
        upgradeChoice = 1;
    }
    
    public void Health()
    {
        text.text = "Do you want to increase the strength of your hull?";
        upgradeChoice = 2;
    }

    public void Upgrade()
    {
        //maneuverability check first if current upgrade amount is under x for all of them and if the rest are all there as well if not ur not allowed to upgrade >:(
        if (upgradesLeft > 0 & upgradeChoice == 0)
        {
            if (StatManager.maneuverabilityUpgrade < 6 && StatManager.maneuverabilityUpgrade > 3 && StatManager.boatSpeedUpgrade <= 6 && StatManager.boatSpeedUpgrade > 3 &&
                StatManager.healthUpgrade <= 6 && StatManager.healthUpgrade > 3)
            {
                StatManager.maneuverabilityUpgrade += 1;
            }
            if (StatManager.maneuverabilityUpgrade < 4 && StatManager.maneuverabilityUpgrade > 1 && StatManager.boatSpeedUpgrade <= 4 && StatManager.boatSpeedUpgrade > 1 &&
                StatManager.healthUpgrade <= 4 && StatManager.healthUpgrade > 1)
            {
                StatManager.maneuverabilityUpgrade += 1;
            }
            if (StatManager.maneuverabilityUpgrade < 2 && StatManager.boatSpeedUpgrade <= 2 &&
                StatManager.healthUpgrade <= 2)
            {
                StatManager.maneuverabilityUpgrade += 1;
            }
        }
        //speed check first if current upgrade amount is under x for all of them and if the rest are all there as well if not ur not allowed to upgrade >:(
        if (upgradesLeft > 0 & upgradeChoice == 1)
        {
            if (StatManager.maneuverabilityUpgrade <= 6 && StatManager.maneuverabilityUpgrade > 3 && StatManager.boatSpeedUpgrade < 6 && StatManager.boatSpeedUpgrade > 3 &&
                StatManager.healthUpgrade <= 6 && StatManager.healthUpgrade > 3)
            {
                StatManager.boatSpeedUpgrade += 1;
            }
            if (StatManager.maneuverabilityUpgrade <= 4 && StatManager.maneuverabilityUpgrade > 1 && StatManager.boatSpeedUpgrade < 4 && StatManager.boatSpeedUpgrade > 1 &&
                StatManager.healthUpgrade <= 4 && StatManager.healthUpgrade > 1)
            {
                StatManager.boatSpeedUpgrade += 1;
            }
            if (StatManager.maneuverabilityUpgrade <= 2 && StatManager.boatSpeedUpgrade <= 2 &&
                StatManager.healthUpgrade < 2)
            {
                StatManager.boatSpeedUpgrade += 1;
            }
        }
        //health check first if current upgrade amount is under x for all of them and if the rest are all there as well if not ur not allowed to upgrade >:(
        if (upgradesLeft > 0 & upgradeChoice == 2)
        {
            if (StatManager.maneuverabilityUpgrade <= 6 && StatManager.maneuverabilityUpgrade > 3 && StatManager.boatSpeedUpgrade <= 6 && StatManager.boatSpeedUpgrade > 3 &&
                StatManager.healthUpgrade < 6 && StatManager.healthUpgrade > 3)
            {
                StatManager.healthUpgrade += 1;
            }
            if (StatManager.maneuverabilityUpgrade <= 4 && StatManager.maneuverabilityUpgrade > 1 && StatManager.boatSpeedUpgrade <= 4 && StatManager.boatSpeedUpgrade > 1 &&
                StatManager.healthUpgrade < 4 && StatManager.healthUpgrade > 1)
            {
                StatManager.healthUpgrade += 1;
            }
            if (StatManager.maneuverabilityUpgrade <= 2 && StatManager.boatSpeedUpgrade <= 2 &&
                StatManager.healthUpgrade < 2)
            {
                StatManager.healthUpgrade += 1;
            }
        }
        
        if (upgradesLeft > 0)
        {
            upgradesLeft -= 1;
        }

        upgradeText.text = "Upgrades Left: " + upgradesLeft;
    }

    public void activateWindow()
    {
        if (upgradesLeft > 0)
        {
            morgan.SetActive(true);
        }
    }

    private void Update()
    {
        if (upgradesLeft > 0)
        {
            image.fillAmount = 1;
        }
        if (upgradesLeft <= fillAmount)
        {
            //how much of the bar per second?
            fillAmount -= 1f * Time.deltaTime;
            image.fillAmount = fillAmount;
            
            //lock checker
            if (StatManager.maneuverabilityUpgrade < 6 && StatManager.maneuverabilityUpgrade > 3 && StatManager.boatSpeedUpgrade <= 6 && StatManager.boatSpeedUpgrade > 3 &&
                StatManager.healthUpgrade <= 6 && StatManager.healthUpgrade > 3)
            {
                maneuverabilityAvailability = true;
            }
            if (StatManager.maneuverabilityUpgrade < 4 && StatManager.maneuverabilityUpgrade > 1 && StatManager.boatSpeedUpgrade <= 4 && StatManager.boatSpeedUpgrade > 1 &&
                StatManager.healthUpgrade <= 4 && StatManager.healthUpgrade > 1)
            {
                maneuverabilityAvailability = true;
            }
            if (StatManager.maneuverabilityUpgrade < 2 && StatManager.boatSpeedUpgrade <= 2 &&
                StatManager.healthUpgrade <= 2)
            {
                maneuverabilityAvailability = true;
            }
            else
            {
                maneuverabilityAvailability = false;
            }
            
            if (StatManager.maneuverabilityUpgrade <= 6 && StatManager.maneuverabilityUpgrade > 3 && StatManager.boatSpeedUpgrade < 6 && StatManager.boatSpeedUpgrade > 3 &&
                StatManager.healthUpgrade <= 6 && StatManager.healthUpgrade > 3)
            {
                speedAvailability = true;
            }
            if (StatManager.maneuverabilityUpgrade <= 4 && StatManager.maneuverabilityUpgrade > 1 && StatManager.boatSpeedUpgrade < 4 && StatManager.boatSpeedUpgrade > 1 &&
                StatManager.healthUpgrade <= 4 && StatManager.healthUpgrade > 1)
            {
                speedAvailability = true;
            }
            if (StatManager.maneuverabilityUpgrade <= 2 && StatManager.boatSpeedUpgrade <= 2 &&
                StatManager.healthUpgrade < 2)
            {
                speedAvailability = true;
            }
            else
            {
                speedAvailability = false;
            }
            
            if (StatManager.maneuverabilityUpgrade <= 6 && StatManager.maneuverabilityUpgrade > 3 && StatManager.boatSpeedUpgrade <= 6 && StatManager.boatSpeedUpgrade > 3 &&
                StatManager.healthUpgrade < 6 && StatManager.healthUpgrade > 3)
            {
                healthAvailability = true;
            }
            if (StatManager.maneuverabilityUpgrade <= 4 && StatManager.maneuverabilityUpgrade > 1 && StatManager.boatSpeedUpgrade <= 4 && StatManager.boatSpeedUpgrade > 1 &&
                StatManager.healthUpgrade < 4 && StatManager.healthUpgrade > 1)
            {
                healthAvailability = true;
            }
            if (StatManager.maneuverabilityUpgrade <= 2 && StatManager.boatSpeedUpgrade <= 2 &&
                StatManager.healthUpgrade < 2)
            {
                healthAvailability = true;
            }
            else
            {
                healthAvailability = false;
            }
            
            if (upgradesLeft < 1)
            {
                maneuverabilityAvailability = false;
                healthAvailability = false;
                speedAvailability = false;
            }
        }
    }
}
