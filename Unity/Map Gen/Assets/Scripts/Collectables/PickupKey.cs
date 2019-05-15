using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickupKey : MonoBehaviour
{
    public KeyCheck chest;

    private void OnTriggerEnter(Collider other)
    {
        chest.AddKey();
        Destroy(gameObject);
    }
}
