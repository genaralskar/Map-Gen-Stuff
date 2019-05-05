using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyHealth : Health
{

    public override void OnHealthUpdate()
    {
        Debug.Log("Owch! " + currentHealth);
    }
    
    public override void OnDeath()
    {
        //play animation probably
        Debug.Log("Dead!");
        gameObject.SetActive(false);
    }
}
