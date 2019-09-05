using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New Boat Type", menuName = "Boat Type")]
public class BoatType : ScriptableObject
{
    public float health;
    public int capacity;
    public float speed;
    public Mesh model;
    public Material[] materials;
}
