using System.Collections;
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

    public float NormalizedHealth => (float)currentHealth / (float)maxHealth;

    private void Start()
    {
        currentHealth = maxHealth;
    }

    public void AddHealth(int amount)
    {
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

    public void RemoveHealth(int amount)
    {
        AddHealth(-amount);
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
