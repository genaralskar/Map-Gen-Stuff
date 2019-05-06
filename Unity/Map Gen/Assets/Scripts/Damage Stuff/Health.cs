﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Experimental.PlayerLoop;

public class Health : MonoBehaviour
{
    public UnityAction Death;
    public UnityAction HealthAdded;
    public UnityAction HealthRemoved;
    public UnityAction<float> UpdateHealth;
    
    public int maxHealth = 100;
    public int currentHealth;
    
    [Tooltip("How often the same damage source can cause damage")]
    public float damagerCooldown = 0.1f;
    
    public float NormalizedHealth => (float)currentHealth / (float)maxHealth;

    private List<DamagerKeeper> dk;
    private List<DamagerKeeper> dkToRemove;

    private void Start()
    {
        currentHealth = maxHealth;
        dk = new List<DamagerKeeper>();
        dkToRemove = new List<DamagerKeeper>();
    }

    private void Update()
    {
        DamageCooldown();
    }

    public void AddHealth(int amount, Collider hitBox)
    {
        //dont do damage stuff if the hitbox in the cooldown list
        if (DamagerKeeperContainsCollider(hitBox)) return;
        
        AddColliderToCooldown(hitBox);
        
        if (amount > 0)
        {
            OnHealthAdded(amount);
            HealthAdded?.Invoke();
        }

        if (amount < 0)
        {
            OnHealthRemoved(amount);
            HealthRemoved?.Invoke();
        }
        
        currentHealth += amount;

        if (currentHealth < 0)
        {
            OnDeath();
            Death?.Invoke();
        }
        currentHealth = Mathf.Clamp(currentHealth, 0, maxHealth);
        
        UpdateHealth?.Invoke(NormalizedHealth);
        OnHealthUpdate();
    }

    private void AddColliderToCooldown(Collider newCol)
    {
        DamagerKeeper newDk = new DamagerKeeper {hitBox = newCol, cooldownTimer = damagerCooldown};
        dk.Add(newDk);
    }

    private void DamageCooldown()
    {
        foreach (var d in dk)
        {
            d.cooldownTimer -= Time.deltaTime;
            if (d.cooldownTimer <= 0)
            {
                dkToRemove.Add(d);
            }
        }

        foreach (var d in dkToRemove)
        {
            dk.Remove(d);
        }
        dkToRemove.Clear();
    }

    private bool DamagerKeeperContainsCollider(Collider coll)
    {
        foreach (var d in dk)
        {
            if (d.hitBox == coll) return true;
        }

        return false;
    }
    

    public void RemoveHealth(int amount, Collider damager)
    {
        AddHealth(-amount, damager);
    }

    public virtual void OnHealthUpdate()
    {
        
    }

    public virtual void OnHealthAdded(int amount)
    {
        
    }

    public virtual void OnHealthRemoved(int amount)
    {
        
    }

    public virtual void OnDeath()
    {
        
    }
    
    
}

public class DamagerKeeper
{
    public Collider hitBox;
    public float cooldownTimer;
}