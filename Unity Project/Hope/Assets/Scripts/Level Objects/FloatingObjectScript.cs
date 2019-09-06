using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloatingObjectScript : MonoBehaviour
{
    [HideInInspector]
    public BoatScript boat;

    public int score;
    public float damage;

    // Update is called once per frame
    void Update()
    {
        transform.position = transform.position - (Vector3.forward * 0.1f * boat.boatSpeed);
    }

    void OnBecameInvisible()
    {
        Destroy(gameObject);
    }
}
