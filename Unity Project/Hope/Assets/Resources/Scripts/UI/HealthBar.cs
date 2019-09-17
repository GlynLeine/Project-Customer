using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{
    [SerializeField] Image image;
    BoatScript boat;
    private int boatHealth;
    private int childCount;

    void Start()
    {
        boat = FindObjectOfType<BoatScript>();
        boatHealth = Mathf.RoundToInt(boat.health);
        for (int i = 0; i < boatHealth; i++)
        {
            Instantiate(image, transform);
        }
        childCount = this.gameObject.transform.childCount;
    }

    void Update()
    {
        boatHealth = Mathf.RoundToInt(boat.health);
        childCount = this.gameObject.transform.childCount;
        
        if (childCount != boatHealth && childCount > 0)
        {
                Destroy (transform.GetChild (0).gameObject);
        }
    }
}
