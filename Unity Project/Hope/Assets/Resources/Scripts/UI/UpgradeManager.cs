using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class UpgradeManager : MonoBehaviour
{
    [SerializeField] private Text text = null;
    private int upgradeChoice;

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
        if (upgradeChoice == 0)
        {
            StatManager.maneuverabilityUpgrade += 1;
        }
        if (upgradeChoice == 1)
        {
            StatManager.boatSpeedUpgrade += 1;
        }

        if (upgradeChoice == 2)
        {
            StatManager.healthUpgrade += 1;
        }
    }
}
