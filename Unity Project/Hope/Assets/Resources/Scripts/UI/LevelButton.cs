using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LevelButton : MonoBehaviour
{
    Text text;
    Image image;

    public int level;

    private void Start()
    {
        text = GetComponentInChildren<Text>();
        image = GetComponentsInChildren<Image>()[1];
    }

    private void Update()
    {
        if(level > StatManager.levelUnlocked)
        {
            if (text.gameObject.activeSelf)
                text.gameObject.SetActive(false);
            if (!image.gameObject.activeSelf)
                image.gameObject.SetActive(true);
        }
        else
        {
            if (!text.gameObject.activeSelf)
                text.gameObject.SetActive(true);
            if (image.gameObject.activeSelf)
                image.gameObject.SetActive(false);
        }
    }
}
