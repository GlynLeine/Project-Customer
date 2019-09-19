using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class lockEnableScript : MonoBehaviour
{
    [SerializeField] private GameObject upgradeManager = null;
    [SerializeField] private GameObject lockImage = null;
    [SerializeField] private int lockSelect = 0;
    private UpgradeManager upgradeScript;
    void Start()
    {
        upgradeScript = upgradeManager.GetComponent<UpgradeManager>();
    }
    
    void Update()
    {
        if (lockSelect == 0)
        {
            if (!upgradeScript.maneuverabilityAvailability)
            {
                lockImage.SetActive(true);
            }

            if (upgradeScript.maneuverabilityAvailability)
            {
                lockImage.SetActive(false);
            }
        }
        
        if (lockSelect == 1)
        {
            if (upgradeScript.maneuverabilityAvailability)
            {
                lockImage.SetActive(false);
            }
            if (!upgradeScript.maneuverabilityAvailability)
            {
                lockImage.SetActive(true);
            }
        }
        
        if (lockSelect == 2)
        {
            if (upgradeScript.maneuverabilityAvailability)
            {
                lockImage.SetActive(false);
            }
            if (!upgradeScript.maneuverabilityAvailability)
            {
                lockImage.SetActive(true);
            }
        }
    }
}
