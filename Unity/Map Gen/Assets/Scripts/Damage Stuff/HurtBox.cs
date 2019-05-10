using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HurtBox : MonoBehaviour
{
    public Health health;

    private void OnTriggerEnter(Collider other)
    {
        HitBox hit = other.GetComponent<HitBox>();
        health.RemoveHealth(hit.damage, other, hit.damageType);
        
        //hit.OnHit?.Invoke(this);
    }
}
