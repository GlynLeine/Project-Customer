using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloatingObjectScript : MonoBehaviour
{
    [HideInInspector]
    public BoatScript boat = null;

    public int score;
    public float damage;

    // Update is called once per frame
    void Update()
    {
        transform.position = transform.position - (Vector3.forward * Time.deltaTime * (boat == null? 1 : boat.boatSpeed) * 3);
        if(transform.position.z < -10)
            Destroy(gameObject);
    }
}
