﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shield : MonoBehaviour
{
    public PlayerAttacks playerAttacks;
    public Health health;
    
    private void OnTriggerEnter(Collider other)
    {
        //set shield hit
        playerAttacks.shieldHit = true;

        other.transform.root.gameObject.GetComponent<EnemyAttacks>()?.HitShield();
        
        health.AddHealth(0, other);
    }
}
