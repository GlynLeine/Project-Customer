using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MoveUpScript : MonoBehaviour
{
    [SerializeField] private GameObject character = null;
    [SerializeField] private GameObject textBox = null;
    public float moveUp = 1;
    private float moveRight;
    private float xPosition;
    private float yPosition;

    void Start()
    {
        moveRight = 0.64f * moveUp;
        textBox.SetActive(false);
    }
    void Update()
    {
        xPosition = character.transform.localPosition.x;
        yPosition = character.transform.localPosition.y;
        
        if (xPosition < -290 && yPosition < -570)
        {
            xPosition += moveRight;
            yPosition += moveUp;
        }

        if (xPosition >= -290 | yPosition >= -570)
        {
            textBox.SetActive(true);
        }

        character.transform.localPosition = new Vector3(xPosition,yPosition,0);
    }
}
