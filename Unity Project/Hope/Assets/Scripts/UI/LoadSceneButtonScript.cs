using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadSceneButtonScript : MonoBehaviour
{
    [SerializeField] private String level;
    void Start()
    {
        if (level == null)
        {
            Debug.Log("dont forget me");
        }
    }
    public void ButtonPress()
    {
        SceneManager.LoadScene(level);
    }
}
