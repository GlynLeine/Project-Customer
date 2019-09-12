using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MapMoveScript : MonoBehaviour
{
    [SerializeField] private float CurrentX;
    [SerializeField] private Slider mySlider;
    
    void Update()
    {
        Vector3 currentPosition = transform.position;
        CurrentX = Mathf.Lerp(-1400, 1400, mySlider.value );
        currentPosition.x = CurrentX;
        transform.position = currentPosition;
    }
}
