using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectKnockback : Knockback
{
    public Rigidbody rb;
    
    protected override void OnHitHandler(Health enemyHealth)
    {
        if (rb != null)
        {
            //Debug.Log("object hit thing!");
            enemyHealth.KnockedBack?.Invoke(rb.velocity.normalized * amount);
        }
        
        
    }
}
