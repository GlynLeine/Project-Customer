using System;
using UnityEngine;
using System.Collections.Generic;

public class FloatingObjectScript : MonoBehaviour
{
    [HideInInspector]
    public BoatScript boat = null;
    [HideInInspector]
    public Waves ocean = null;
    [HideInInspector]
    public LevelMasterScript master = null;
    [HideInInspector]
    public int ID;

    [ReadOnly]
    public int score;
    [ReadOnly]
    public float damage;
    [ReadOnly]
    public float buoyancy;

    private Vector3 velocity;

    public AudioClip hitSound;

    // Update is called once per frame
    void Update()
    {
        if (LevelMasterScript.paused)
            return;

        if (boat == null)
            throw new NullReferenceException("FloatingObjectScript: Boat reference null.");
        if (ocean == null)
            throw new NullReferenceException("FloatingObjectScript: Ocean reference null.");

        Vector3 position = transform.position;
        velocity.z = -(Time.deltaTime * boat.boatSpeed * 9);
        velocity.y = (ocean.GetHeightQuick(position) - position.y) * buoyancy;
        transform.position = position + velocity;

        if (position.z < -10)
        {
            DisableAndMarkForReuse();
        }
    }

    public void DisableAndMarkForReuse()
    {
        GetComponent<Collider>().isTrigger = true;

        gameObject.SetActive(false);
        if (master.reUsableFloatingObjects.ContainsKey(ID))
            master.reUsableFloatingObjects[ID].Enqueue(this);
        else
            master.reUsableFloatingObjects.Add(ID, new Queue<FloatingObjectScript>(new FloatingObjectScript[] { this }));
    }
}
