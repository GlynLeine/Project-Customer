using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class MusicSlider: MonoBehaviour
{
    public AudioMixer MusicMixer;
    public void ChangeVol(float newValue)
    {
        MusicMixer.SetFloat("Volume", Mathf.Log(newValue) * 20);
    }
}

