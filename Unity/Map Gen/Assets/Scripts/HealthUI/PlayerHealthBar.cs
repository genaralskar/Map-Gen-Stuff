using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealthBar : HealthBar
{
    void Awake()
    {
        PlayerHealth.UpdateHealth += UpdateHealth;
    }
}
