﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MapMoveScript : MonoBehaviour
{
    private RawImage image;
    
    private float width;
    private float screenWidth;
    
    private Vector3 currentPosition;
    private Vector3 prevMouse = new Vector3();

    [SerializeField] private GameObject canvas;

    private void Start()
    {
        image = GetComponent<RawImage>();
        width = image.rectTransform.sizeDelta.x;
        RectTransform rt = (RectTransform) canvas.transform;
        screenWidth = rt.rect.width;
        /*currentPosition = image.rectTransform.localPosition;*/
        currentPosition = transform.localPosition;
    }

    void Update()
    {
        if (Input.touchCount > 0)
        {
            Vector2 deltaTouch = Input.GetTouch(0).deltaPosition;
            currentPosition.x += deltaTouch.x;
        }
        else if (Input.GetMouseButton(0))
        {
            currentPosition.x += (Input.mousePosition - prevMouse).x;
        }
        prevMouse = Input.mousePosition;

        if (currentPosition.x > width / 2 - screenWidth / 2)
        {
            currentPosition.x = width / 2 - screenWidth / 2;
        }

        if (currentPosition.x < - width / 2 +(screenWidth /2))
        {
            currentPosition.x = - width / 2 +(screenWidth /2);
        }
        /*image.rectTransform.position = currentPosition;*/
        transform.localPosition = currentPosition;
    }
}