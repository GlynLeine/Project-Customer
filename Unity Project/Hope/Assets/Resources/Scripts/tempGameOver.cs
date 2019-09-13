using System.Collections;
using UnityEngine.SceneManagement;
using UnityEngine;

public class tempGameOver : MonoBehaviour
{
    float timePassed = 0;

    public int level = 0;

    void Start()
    {

    }

    private void Update()
    {
        timePassed += Time.deltaTime;
        if(timePassed > 5)
            LevelManager.StaticLoadLevel(level);
    }
}
