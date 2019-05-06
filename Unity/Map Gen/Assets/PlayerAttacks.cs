using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttacks : MonoBehaviour
{
    public string attackInput = "Attack";
    public string blockInput = "Block";

    public bool shieldHit = false;
    
    public Animator rArmAnimator;
    public Animator lArmAnimator;

    // Update is called once per frame
    void Update()
    {
        bool isBlocking = Input.GetButton(blockInput);
        bool isAttacking = false;

        if (!isBlocking)
        {
            isAttacking = Input.GetButton(attackInput);
        }

        if (isBlocking && shieldHit)
        {
            lArmAnimator.SetTrigger("Shield Hit");
        }
        
        rArmAnimator.SetBool("Attack", isAttacking);
        lArmAnimator.SetBool("Blocking", isBlocking);

        shieldHit = false;
    }
}
