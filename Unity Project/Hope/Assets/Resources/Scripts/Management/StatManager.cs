using UnityEngine;
using System.Collections;

public enum Stats
{
    Acceleration = 0, Movement = 1, BoatSpeed = 2, Health = 3
}

public class StatManager : MonoBehaviour
{
    public static float timePlayed;
    public static int trashCollected;
    public static float healthLost;

    public static int maneuverabilityUpgrade = 0;
    public static int boatSpeedUpgrade = 0;
    public static int healthUpgrade = 0;

    public static int levelUnlocked = 0;
    public int levelUnlockedOverride = -1;

    public static float timeInLevel;
    public static int obstaclesHitInLevel;
    public static float healthLostInLevel;
    public static int trashCollectedInLevel;

    private bool created = false;

    public static bool useGyro = true;
    public static StatManager instance;
    public bool UseGyro => useGyro;
    public static float gyroSensitivity = 1;

    private void Awake()
    {
        instance = this;
    }

    private void OnValidate()
    {
        instance = this;
    }

    private void Start()
    {
        if (!created)
        {
            if(FindObjectsOfType<StatManager>().Length > 1)
            {
                Destroy(gameObject);
                return;
            }

            if (levelUnlockedOverride >= 0)
                levelUnlocked = levelUnlockedOverride;

            DontDestroyOnLoad(this);
            created = true;
            instance = this;
        }

    }

    private void Update()
    {
        if (!SystemInfo.supportsGyroscope)
            useGyro = false;

        Input.gyro.enabled = useGyro;

        timePlayed += Time.deltaTime;
        if (!LevelMasterScript.paused)
            timeInLevel += Time.deltaTime;
    }

    public static void TrackNewLevel()
    {
        timeInLevel = 0;
        obstaclesHitInLevel = 0;
        trashCollected += trashCollectedInLevel;
        trashCollectedInLevel = 0;
        healthLostInLevel = 0;
    }

    public static float GetStat(float min, float max, int upgradeLevel)
    {
        return min + ((max - min) / 5) * upgradeLevel;
    }

    public static float GetStat(BoatType boatType, Stats statType)
    {
        switch (statType)
        {
            case Stats.Acceleration:
                return GetStat(boatType.minAcceleration, boatType.maxAcceleration, maneuverabilityUpgrade);
            case Stats.Movement:
                return GetStat(boatType.minMovementSpeed, boatType.maxMovementSpeed, maneuverabilityUpgrade);
            case Stats.BoatSpeed:
                return GetStat(boatType.minSpeed, boatType.maxSpeed, boatSpeedUpgrade);
            case Stats.Health:
                return GetStat(boatType.minHealth, boatType.maxHealth, healthUpgrade);
            default:
                return 0;
        }
    }

    public static int GetUpgradeLevel(Stats statType)
    {
        switch (statType)
        {
            case Stats.Acceleration:
                return maneuverabilityUpgrade;
            case Stats.Movement:
                return maneuverabilityUpgrade;
            case Stats.BoatSpeed:
                return boatSpeedUpgrade;
            case Stats.Health:
                return healthUpgrade;
            default:
                return 0;
        }
    }

    public void IncreaseStat(Stats statType)
    {
        switch (statType)
        {
            case Stats.Acceleration:
                IncreaseManeuverability();
                break;
            case Stats.Movement:
                IncreaseManeuverability();
                break;
            case Stats.BoatSpeed:
                IncreaseBoatSpeed();
                break;
            case Stats.Health:
                IncreaseHealth();
                break;
            default:
                return;
        }
    }

    public void IncreaseManeuverability()
    {
        maneuverabilityUpgrade++;
        if (maneuverabilityUpgrade > 5)
            maneuverabilityUpgrade = 5;
    }
    public void IncreaseBoatSpeed()
    {
        boatSpeedUpgrade++;
        if (boatSpeedUpgrade > 5)
            boatSpeedUpgrade = 5;
    }

    public void IncreaseHealth()
    {
        healthUpgrade++;
        if (healthUpgrade > 5)
            healthUpgrade = 5;
    }

    public void GyroBool(bool value)
    {
        if (value)
        {
            useGyro = true;
        }
        else
        {
            useGyro = false;
        }
    }

    public void GyroSens(float value)
    {
        gyroSensitivity = value;
    }

}
