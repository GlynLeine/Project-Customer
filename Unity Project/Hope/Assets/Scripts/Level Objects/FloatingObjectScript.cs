using System;
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
        if(boat == null)
            throw new NullReferenceException("FloatingObjectScript: Boat reference null.");
        transform.position = transform.position - (Vector3.forward * Time.deltaTime * boat.boatSpeed * 3);
        if(transform.position.z < -10)
            Destroy(gameObject);
    }
}
