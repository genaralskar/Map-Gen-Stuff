using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(Health))]
public class HealthUnityEvents : MonoBehaviour
{
    public Vector3Event OnKnockBack;
    public UnityEvent OnKnockBackNoForce;

    private Health health;
    
    private void Start()
    {
        health = GetComponent<Health>();
        health.KnockedBack += KnockedBackHandler;
    }

    private void KnockedBackHandler(Vector3 force)
    {
        OnKnockBack?.Invoke(force);
        OnKnockBackNoForce?.Invoke();
    }
}

[System.Serializable]
public class Vector3Event : UnityEvent<Vector3>
{
}
