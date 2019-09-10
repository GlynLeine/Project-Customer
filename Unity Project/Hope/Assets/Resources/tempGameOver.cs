using System.Collections;
using UnityEngine.SceneManagement;
using UnityEngine;

public class tempGameOver : MonoBehaviour
{
    float timePassed = 0;

    public string level = "MainGame";

    void Start()
    {

    }

    private void Update()
    {
        timePassed += Time.deltaTime;
        if(timePassed > 5)
            SceneManager.LoadScene(level);
    }
}
