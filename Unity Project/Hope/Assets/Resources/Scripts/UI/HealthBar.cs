using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{
    [SerializeField] Image image = null;
    BoatScript boat;
    private int boatHealth;
    private int childCount;
    private bool hasInstantiated = false;

    void Start()
    {
        boat = FindObjectOfType<BoatScript>();
        boatHealth = Mathf.RoundToInt(boat.health);

        childCount = this.gameObject.transform.childCount;
    }

    void Update()
    {
        boatHealth = Mathf.RoundToInt(boat.health);
        if (!hasInstantiated)
        {
            for (int i = 0; i < boatHealth; i++)
            {
                Instantiate(image, transform);
            }

            hasInstantiated = true;
        }
        childCount = this.gameObject.transform.childCount;
        
        if (childCount != boatHealth && childCount > 0)
        {
                Destroy (transform.GetChild (0).gameObject);
        }
    }
}
