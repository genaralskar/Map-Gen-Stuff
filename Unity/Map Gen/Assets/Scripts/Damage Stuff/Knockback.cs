using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(HitBox))]
public class Knockback : MonoBehaviour
{
    public float amount;
    
    private HitBox hitBox;

    private void Awake()
    {
        hitBox = GetComponent<HitBox>();
    }

    private void OnHitHandler(Health enemyHealth)
    {
        EnemyMovement enemyMove = enemyHealth.GetComponent<EnemyMovement>();
        if (enemyMove != null)
        {
            Vector3 knockbackDirection = transform.forward * amount;
            enemyMove.Knockback(knockbackDirection);
        }
    }

    private void OnEnable()
    {
        if (hitBox != null)
        {
            hitBox.OnHit += OnHitHandler;
        }
    }

    private void OnDisable()
    {
        if(hitBox != null)
            hitBox.OnHit -= OnHitHandler;
    }
}
