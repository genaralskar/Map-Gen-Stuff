using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class HitBox : MonoBehaviour
{
    public UnityAction<Health> OnHit;

    public IntValue baseDamage;
    public FloatValue damageMultiplier;

    public int Damage
    {
        get
        {
            if (baseDamage == null) return 5;
            
            return (int)(baseDamage * damageMultiplier);
        }
    }

    public Health.DamageType damageType = Health.DamageType.Neutral;
    public float critChance = 0.1f;
}
