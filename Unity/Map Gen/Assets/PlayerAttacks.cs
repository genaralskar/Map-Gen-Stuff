using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttacks : MonoBehaviour
{
    public string attackInput = "Attack";
    
    public Animator rArmAnimator;

    // Update is called once per frame
    void Update()
    {
        rArmAnimator.SetBool("Attack", Input.GetButton(attackInput));
    }
}
