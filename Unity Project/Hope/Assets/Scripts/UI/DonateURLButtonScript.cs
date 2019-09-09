using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DonateURLButtonScript : MonoBehaviour
{
    public void ButtonPress()
    {
        Application.OpenURL("https://theoceancleanup.com/donate/");
    }
}
