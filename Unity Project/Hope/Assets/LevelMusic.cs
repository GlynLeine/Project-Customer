using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelMusic : MonoBehaviour
{
    AudioSource audioSource;
    private void Awake()
    {
        audioSource = GetComponent<AudioSource>();
        audioSource.clip = LevelManager.levelToLoad.levelMusic;
        audioSource.Play();
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
