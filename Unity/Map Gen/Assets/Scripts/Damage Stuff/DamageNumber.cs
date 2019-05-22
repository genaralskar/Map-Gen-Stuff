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
    [HideInInspector]
    public Color32 color = Color.white;
    
    
    public float lifeTime = 1f;

    public Vector3 objectOffset = new Vector3(0, 2f, 0);
    public Vector2 velocity = new Vector2(5f, 5f);
    public float gravity = 1f;

    private TextMeshProUGUI TMP;

    private float lifeTimer;
    private float yVelocity;
    private float xVelocity;
    private Vector2 currentOffset;

    private float smoothVel = 5f;
    
    private void Awake()
    {
        TMP = GetComponent<TextMeshProUGUI>();
        lifeTimer = lifeTime;
        yVelocity = velocity.y;
        xVelocity = Random.Range(-velocity.x, velocity.x);
    }

    private void Start()
    {
        TMP.color = color;
    }

    private void LateUpdate()
    {
        lifeTimer -= Time.deltaTime;
        if (lifeTimer <= 0)
        {
            Destroy(gameObject);
        }

        Move();
        FadeColor();
    }

    private void Move()
    {
        if (parent == null) return;
        
        transform.position = cam.WorldToScreenPoint(parent.position + objectOffset);
        currentOffset.x += xVelocity * Time.deltaTime;
        currentOffset.y += yVelocity * Time.deltaTime;
        
        yVelocity -= gravity * Time.deltaTime;

        Vector2 position = transform.localPosition + (Vector3)currentOffset;

        transform.localPosition = position;

    }

    private void FadeColor()
    {
        Color32 tempColor = TMP.color;
        Color32 tempColorFade = tempColor;
        byte newA = (byte) Mathf.Lerp(255, 0, GetExponent(1-(lifeTimer / lifeTime), 3));
        tempColorFade.a = newA;
        //Color32 newColor = Color32.Lerp(tempColorFade, tempColor, lifeTimer / lifeTime);
        
        //Mathf.Lerp(255, 0, lifetim)
        //tempColor.a -= lifeTimer / lifeTime;
//        
//        Color32 tempColor32 = tempColor;
        //Debug.Log(tempColorFade);
        
        TMP.color = tempColorFade;
    }

    private float GetExponent(float input, float power)
    {
        input = Mathf.Pow(input, power);
        return Mathf.Lerp(0, 1, input);
    }
}
