using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class UpgradeManager : MonoBehaviour
{
    [SerializeField] private Text text = null;
    private int upgradeChoice;
    private int upgradesLeft = 1;

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
        //maneuverability check first if all are under 4 or under & if the previous upgrades have been done to 2 then check if all are 2 or under
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
        //speed check first if all are under 4 or under & if the previous upgrades have been done to 2 then check if all are 2 or under
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
        //health check first if all are under 4 or under & if the previous upgrades have been done to 2 then check if all are 2 or under
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

        upgradesLeft -= 1;
    }
}
