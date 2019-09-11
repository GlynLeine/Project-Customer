using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UICloseScript : MonoBehaviour
{
    [SerializeField] private GameObject settingsScreen;

    void Start()
    {
        settingsScreen.SetActive(false);
    }    

    public void UIOpen()
    {
        settingsScreen.SetActive(true);
    }
    
    public void UIClose()
    {
        settingsScreen.SetActive(false);
    }
}
