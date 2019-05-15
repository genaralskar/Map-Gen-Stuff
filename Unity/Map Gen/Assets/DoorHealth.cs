using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorHealth : Health
{
    public Rigidbody doorRb;
    public float forceMultiplier = 200f;

    public GameObject hitBox;
    public float hitBoxActivationSpeed = 5f;
    
    private void Start()
    {
        KnockedBack += OpenOnKnockback;
    }

    private void OpenOnKnockback(Vector3 force)
    {
        doorRb.isKinematic = false;
        doorRb.AddForce(force.normalized * forceMultiplier, ForceMode.Impulse);
        StartCoroutine(ActivateHitBox());
    }
    
    private Vector3 FindDirection(Transform source)
    {
        if (Vector3.Dot(transform.forward, source.forward) >= 0)
        {
            return transform.forward;
        }
        return -transform.forward;
    }

    private IEnumerator ActivateHitBox()
    {
        hitBox.SetActive(true);
        yield return new WaitForFixedUpdate();
        yield return new WaitForFixedUpdate();
        //Debug.Log("activating door " + doorRb.velocity.magnitude);
        while (doorRb.velocity.magnitude > hitBoxActivationSpeed)
        {
            //Debug.Log("door active!");
            yield return null;
        }
        hitBox.SetActive(false);
    }
}
