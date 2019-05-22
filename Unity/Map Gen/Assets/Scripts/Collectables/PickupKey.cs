using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class PickupKey : MonoBehaviour
{
    public KeyCheck chest;
    public static UnityAction keyPickUp;

    private void OnTriggerEnter(Collider other)
    {
        chest.AddKey();
        keyPickUp?.Invoke();
        Destroy(gameObject);
    }
}
