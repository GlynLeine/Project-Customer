using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using UnityEngine;

[Serializable]
public class SaveGame
{
    public float timePlayed;
    public int trashCollected;
    public float healthLost;

    public int maneuverabilityUpgrade;
    public int boatSpeedUpgrade;
    public int healthUpgrade;
    public bool hasShield;

    public int levelUnlocked;

    public bool useGyro;
    public float gyroSensitivity;

    public SaveGame()
    {
        timePlayed = StatManager.timePlayed;
        trashCollected = StatManager.trashCollected;
        healthLost = StatManager.healthLost;
        maneuverabilityUpgrade = StatManager.maneuverabilityUpgrade;
        boatSpeedUpgrade = StatManager.boatSpeedUpgrade;
        healthUpgrade = StatManager.healthUpgrade;
        hasShield = StatManager.hasShield;
        levelUnlocked = StatManager.levelUnlocked;
        useGyro = StatManager.useGyro;
        gyroSensitivity = StatManager.gyroSensitivity;
    }

    public void Apply()
    {
        StatManager.timePlayed = timePlayed;
        StatManager.trashCollected = trashCollected;
        StatManager.healthLost = healthLost;
        StatManager.maneuverabilityUpgrade = maneuverabilityUpgrade;
        StatManager.boatSpeedUpgrade = boatSpeedUpgrade;
        StatManager.healthUpgrade = healthUpgrade;
        StatManager.hasShield = hasShield;
        StatManager.levelUnlocked = levelUnlocked;
        StatManager.useGyro = useGyro;
        StatManager.gyroSensitivity = gyroSensitivity;
    }
}

public static class SaveSystem
{
    public static void SaveGame()
    {
        BinaryFormatter formatter = new BinaryFormatter();
        string path = Application.persistentDataPath + "/savegame.hope";
        FileStream stream = new FileStream(path, FileMode.Create);

        SaveGame saveGame = new SaveGame();

        formatter.Serialize(stream, saveGame);
        stream.Close();
    }

    public static void LoadGame()
    {
        string path = Application.persistentDataPath + "/savegame.hope";
        if (File.Exists(path))
        {
            BinaryFormatter formatter = new BinaryFormatter();
            FileStream stream = new FileStream(path, FileMode.Open);

            SaveGame saveGame = formatter.Deserialize(stream) as SaveGame;
            stream.Close();

            saveGame.Apply();
        }
        else
        {
            Debug.LogError("Save file not found in " + path);
        }
    }
}