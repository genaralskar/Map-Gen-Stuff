using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class KeyCheck : MonoBehaviour
{
    public UnityEvent CheckSuccess;
    public UnityEvent CheckFail;

    public int keyCount;
    private int currentKeys;

    private void OnTriggerEnter(Collider other)
    {
        if (currentKeys >= keyCount)
        {
            CheckSuccess?.Invoke();
        }
        else
        {
            CheckFail?.Invoke();
        }
    }

    public void AddKey()
    {
        currentKeys++;
    }
}
