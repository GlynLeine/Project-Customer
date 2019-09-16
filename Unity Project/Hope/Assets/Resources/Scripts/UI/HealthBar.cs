using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{
    Image image;
    BoatScript boat;
    Text text;

    // Start is called before the first frame update
    void Start()
    {
        image = GetComponent<Image>();
        text = GetComponentInChildren<Text>();
        boat = FindObjectOfType<BoatScript>();
    }

    // Update is called once per frame
    void Update()
    {
        text.text = "HP: " + boat.health;
        image.fillAmount = boat.health / boat.maxHealth;
    }
}
