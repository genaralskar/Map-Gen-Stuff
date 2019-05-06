using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class PlayerHealth : Health
{
    public static UnityAction<float> UpdateHealth;

    public override void OnHealthUpdate()
    {
        UpdateHealth?.Invoke(NormalizedHealth);
    }
}
