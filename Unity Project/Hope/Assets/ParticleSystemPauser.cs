using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleSystemPauser : MonoBehaviour
{
#if UNITY_EDITOR
    private new ParticleSystem particleSystem;
#else
    private ParticleSystem particleSystem;
#endif
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
