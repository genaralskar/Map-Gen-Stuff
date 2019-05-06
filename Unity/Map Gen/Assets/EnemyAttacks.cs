using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyAttacks : MonoBehaviour
{
    public Animator rArmAnimator;
    public float attackInterval = 2f;
    public float attackRange = 1f;
    
    private EnemyMovement enemyMove;

    private void Awake()
    {
        enemyMove = GetComponent<EnemyMovement>();
    }

    // Start is called before the first frame update
    void Start()
    {
        //StartCoroutine(Attacking());
    }

    private void Update()
    {
        if (!SpawnModules.levelSpawned) return;
        
        if (enemyMove.PlayerInAttackRange(attackRange))
        {
            Attack();
        }
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

    public void Attack()
    {
        rArmAnimator.SetTrigger("Attack");
    }
}
