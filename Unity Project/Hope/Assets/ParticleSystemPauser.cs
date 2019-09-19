using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleSystemPauser : MonoBehaviour
{
    ParticleSystem particleSystem;

    void Start()
    {
        particleSystem = GetComponent<ParticleSystem>();
    }

    // Update is called once per frame
    void Update()
    {
        if (LevelMasterScript.paused)
            particleSystem.Pause();
        else
            particleSystem.Play();
    }
}
