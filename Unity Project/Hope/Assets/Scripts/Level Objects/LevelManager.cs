using UnityEngine.SceneManagement;
using UnityEngine;
using System;
public class LevelManager : MonoBehaviour
{
    public LevelOrder levelOrder;

    static private LevelManager levelManager;

    private void OnValidate()
    {
        levelManager = this;
        levelToLoad = levelOrder.levels[0];
    }

    private void Awake()
    {
        DontDestroyOnLoad(this);
        levelManager = this;
        levelToLoad = levelOrder.levels[0];
    }

    static public LevelType GetLevelType(int index)
    {
        return levelManager.levelOrder.levels[index];
    }

    static public LevelType levelToLoad
    {
        get;
        private set;
    }

    static private int currentLevel;

    static public void LoadLevel(int level)
    {
        currentLevel = level;
        levelToLoad = levelManager.levelOrder.levels[level];
        SceneManager.LoadScene("MainGame");
    }

    static public void LoadLevel(LevelType levelType)
    {
        int nextLevel = Array.IndexOf(levelManager.levelOrder.levels, levelType);
        if(nextLevel < 0)
            throw new Exception("Level " + levelType.name + " not in level order.");
        currentLevel = nextLevel;
        levelToLoad = levelType;
        SceneManager.LoadScene("MainGame");
    }

    static public void ReloadLastLevel()
    {
        SceneManager.LoadScene("MainGame");
    }
}
