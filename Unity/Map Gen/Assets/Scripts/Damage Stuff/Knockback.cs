using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(HitBox))]
public class Knockback : MonoBehaviour
{
    public float amount;
    
    private HitBox hitBox;

    private void Awake()
    {
        hitBox = GetComponent<HitBox>();
    }

    private void OnHitHandler(Health enemyHealth)
    {
        enemyHealth.KnockedBack?.Invoke(this);
    }

    private void OnEnable()
    {
        if (hitBox != null)
        {
            hitBox.OnHit += OnHitHandler;
        }
    }

    private void OnDisable()
    {
        if(hitBox != null)
            hitBox.OnHit -= OnHitHandler;
    }
}
