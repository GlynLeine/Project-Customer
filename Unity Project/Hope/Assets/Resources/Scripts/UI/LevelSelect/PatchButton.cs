using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PatchButton : MonoBehaviour
{
    [SerializeField] private GameObject unlockButton = null;
    Image image;

    public int level;
    
    private void Start()
    {
        image = GetComponentsInChildren<Image>()[1];
    }

    public void EnableOther()
    {
        if(level < StatManager.levelUnlocked)
        {
            unlockButton.SetActive(true);
        }
        else
        {
            unlockButton.SetActive(false);
        }
    }

    public void DisableSelf()
    {
        if(level < StatManager.levelUnlocked)
        {
            gameObject.SetActive(false);
        }
        else
        {
            gameObject.SetActive(true);
        }
    }
    
    private void Update()
    {
        if(level+1 > StatManager.levelUnlocked)
        {
            if (!image.gameObject.activeSelf)
                image.gameObject.SetActive(true);
        }
        else
        {
            if (image.gameObject.activeSelf)
                image.gameObject.SetActive(false);
        }
    }
}

