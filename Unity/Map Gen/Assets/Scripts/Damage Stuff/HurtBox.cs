using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class HurtBox : MonoBehaviour
{
    public Health health;

    public UnityAction HurtBoxEnter;

    private void OnTriggerEnter(Collider other)
    {
        HitBox hit = other.GetComponent<HitBox>();
        health.RemoveHealth(hit);
        
        HurtBoxEnter?.Invoke();
        //hit.OnHit?.Invoke(this);
    }
}
