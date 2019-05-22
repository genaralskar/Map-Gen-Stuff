using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(EnemyMovement))]
[RequireComponent(typeof(EnemyHealth))]
public class EnemyAttacks : MonoBehaviour
{
    public Animator rArmAnimator;
    public float attackInterval = 2f;
    public float attackRange = 1f;

    public FloatValue attackSpeedMultiplier;
    
    private EnemyMovement enemyMove;
    private EnemyHealth health;

    private void Awake()
    {
        enemyMove = GetComponent<EnemyMovement>();
        health = GetComponent<EnemyHealth>();
    }

    // Start is called before the first frame update
    void Start()
    {
        health.KnockedBack += HitShield;

        rArmAnimator.playbackTime = attackSpeedMultiplier;
    }

    private void Update()
    {
        if (!SpawnModules.levelSpawned) return;
        
        rArmAnimator.SetBool("Attack 0", enemyMove.PlayerInAttackRange(attackRange));
//        if (enemyMove.PlayerInAttackRange(attackRange))
//        {
//            Attack();
//        }
    }

    private IEnumerator Attacking()
    {
        WaitForSeconds waiter = new WaitForSeconds(attackInterval);
        while (true)
        {
            yield return waiter;
            Attack();
        }
    }

    public void HitShield()
    {
        rArmAnimator.SetTrigger("Shield Hit");
    }

    private void HitShield(Vector3 force)
    {
        HitShield();
    }

    public void Attack()
    {
        rArmAnimator.SetTrigger("Attack");
    }
}
