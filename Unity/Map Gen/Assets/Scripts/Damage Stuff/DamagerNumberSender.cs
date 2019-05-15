using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class DamagerNumberSender : MonoBehaviour
{
    public Health health;

    private void Start()
    {
        health.HealthRemoved += HealthRemovedHandler;
    }

    private void HealthRemovedHandler(int amount, Health.DamageType damageType)
    {
        //Debug.Log("sending damage numbers");
        DamageNumberSpawner.spawnDamagerNumbers(amount, transform, damageType);
    }
}
