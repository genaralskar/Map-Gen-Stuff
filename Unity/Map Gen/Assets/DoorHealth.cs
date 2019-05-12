using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorHealth : Health
{
    public Animator anims;

    private void Start()
    {
        KnockedBack += OpenOnKnockback;
    }

    private void OpenOnKnockback(Knockback knockback)
    {
        anims.SetTrigger("Open Door");
    }
}
