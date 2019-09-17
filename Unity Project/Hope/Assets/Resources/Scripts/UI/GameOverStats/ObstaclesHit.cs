using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ObstaclesHit : MonoBehaviour
{
    private Text text;
    private float obstacles;
    void Start()
    {
        text = GetComponent<Text>();
        obstacles = StatManager.obstaclesHitInLevel;
        text.text = "Obstacles hit:" + obstacles;
    }
}