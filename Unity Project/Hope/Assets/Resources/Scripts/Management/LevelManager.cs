using UnityEngine.SceneManagement;
using UnityEngine;
using System;
public class LevelManager : MonoBehaviour
{
    public LevelOrder levelOrder;

    private static LevelOrder finalLevelOrder;
    private static int currentLevel;

    private static LevelManager levelManager;

    private static string previousScene = "StartMenu";

    private void Awake()
    {
        Application.targetFrameRate = 300;
        QualitySettings.vSyncCount = 0;

        if (levelManager == null)
            finalLevelOrder = levelOrder;

        levelManager = this;
        if (levelToLoad == null)
            levelToLoad = levelOrder.levels[0];
    }

    private void OnValidate()
    {
        if (levelManager == null)
            finalLevelOrder = levelOrder;

        levelManager = this;
        if (levelToLoad == null)
            levelToLoad = levelOrder.levels[0];
    }

    private void Start()
    {
        levelOrder = finalLevelOrder;
    }

    internal static LevelType GetLevelType(int index)
    {
        return levelManager.levelOrder.levels[index];
    }

    public static LevelType levelToLoad
    {
        get;
        private set;
    }

    public void LoadLevel(int level)
    {
        StaticLoadLevel(level);
    }

    internal static void StaticLoadLevel(int level)
    {
        if (level >= levelManager.levelOrder.levels.Length)
            SceneManager.LoadScene("LevelSelect");

        if (level > StatManager.levelUnlocked)
            return;

        currentLevel = level;
        levelToLoad = levelManager.levelOrder.levels[level];
        StatManager.TrackNewLevel();
        SceneManager.LoadScene("MainGame");
    }

    public void LoadLevel(LevelType levelType)
    {
        StaticLoadLevel(levelType);
    }

    internal static void StaticLoadLevel(LevelType levelType)
    {
        int nextLevel = Array.IndexOf(levelManager.levelOrder.levels, levelType);
        if (nextLevel < 0)
            throw new Exception("Level " + levelType.name + " not in level order.");
        currentLevel = nextLevel;
        levelToLoad = levelType;
        StatManager.TrackNewLevel();
        SceneManager.LoadScene("MainGame");
    }

    public void ReloadLastLevel()
    {
        StatManager.TrackNewLevel();
        SceneManager.LoadScene("MainGame");
    }

    internal static void StaticReloadLastLevel()
    {
        StatManager.TrackNewLevel();
        SceneManager.LoadScene("MainGame");
    }

    public void LoadScene(string sceneName)
    {
        StaticLoadScene(sceneName);
    }

    internal static void StaticLoadScene(string sceneName)
    {
        previousScene = SceneManager.GetActiveScene().name;
        SceneManager.LoadScene(sceneName);
    }

    public void LoadAndUnlockNextLevel()
    {
        ++StatManager.levelUnlocked;
        LoadLevel(++currentLevel);
    }

    internal static void StaticLoadAndUnlockNextLevel()
    {
        ++StatManager.levelUnlocked;
        StaticLoadLevel(++currentLevel);
    }

    public void LoadPreviousScene()
    {
        StaticLoadPreviousScene();
    }

    internal static void StaticLoadPreviousScene()
    {
        string nextScene = previousScene;
        previousScene = SceneManager.GetActiveScene().name;
        SceneManager.LoadScene(nextScene);
    }
}
