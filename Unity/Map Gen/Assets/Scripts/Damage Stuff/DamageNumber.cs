using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class DamageNumber : MonoBehaviour
{
    [HideInInspector]
    public Transform parent;
    [HideInInspector]
    public Camera cam;
    
    
    public float lifeTime = 1f;

    public Vector3 objectOffset = new Vector3(0, 2f, 0);
    public Vector2 velocity = new Vector2(5f, 5f);
    public float gravity = 1f;

    private TextMeshProUGUI TMP;

    private float lifeTimer;
    private float yVelocity;
    private float xVelocity;
    private Vector2 currentOffset;
    
    private void Awake()
    {
        TMP = GetComponent<TextMeshProUGUI>();
        lifeTimer = lifeTime;
        yVelocity = velocity.y;
        xVelocity = Random.Range(-velocity.x, velocity.x);
    }

    private void LateUpdate()
    {
        lifeTimer -= Time.deltaTime;
        if (lifeTimer <= 0)
        {
            Destroy(gameObject);
        }

        Move();
        //FadeColor();
    }

    private void Move()
    {
        transform.position = cam.WorldToScreenPoint(parent.position + objectOffset);
        currentOffset.x += xVelocity * Time.deltaTime;
        currentOffset.y += yVelocity * Time.deltaTime;
        
        yVelocity -= gravity * Time.deltaTime;

        Vector2 position = transform.localPosition + (Vector3)currentOffset;

        transform.localPosition = position;

    }

    private void FadeColor()
    {
        Color tempColor = TMP.color;
        tempColor.a -= lifeTimer / lifeTime;
        TMP.color = tempColor;
    }
}
