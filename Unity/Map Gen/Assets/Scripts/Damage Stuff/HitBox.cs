using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class HitBox : MonoBehaviour
{
    public UnityAction<Health> OnHit;
    
    public int damage = 5;
    public Health.DamageType damageType = Health.DamageType.Neutral;
    public float critChance = 0.1f;
}
