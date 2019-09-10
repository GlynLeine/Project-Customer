using UnityEngine.SceneManagement;
using UnityEngine;
using System;
public class LevelManager : MonoBehaviour
{
    public LevelType[];

    private void Start()
    {
        DontDestroyOnLoad(this);
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
        levelToLoad = Resources.Load<LevelType>("Levels/level" + level);
        SceneManager.LoadScene("MainGame");
    }

    static public void LoadLevel(LevelType levelType)
    {
        if(!int.TryParse(levelType.name.Substring(0, 5), out currentLevel))
            return;
        levelToLoad = levelType;
        SceneManager.LoadScene("MainGame");
    }

    static public void ReloadLastLevel()
    {
        SceneManager.LoadScene("MainGame");
    }
}
