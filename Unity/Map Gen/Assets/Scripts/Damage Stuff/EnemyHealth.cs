using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyHealth : Health
{

    public int expAmount = 10;

    public override void OnHealthUpdate()
    {
        Debug.Log("Owch! " + currentHealth);
    }
    
    public override void OnDeath(Collider hitbox)
    {
        //add exp to player
        hitbox.transform.root.gameObject.GetComponent<Experience>().AddExperience(expAmount);
        
        //play animation probably
        Debug.Log("Dead!");
        gameObject.SetActive(false);
    }
}
