using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class PlayerHealth : Health
{
    public new static UnityAction<int, int> UpdateHealth;

    private void Start()
    {
        OnHealthUpdate();
    }

    public override void OnHealthUpdate()
    {
        UpdateHealth?.Invoke(currentHealth, maxHealth);
    }
}
