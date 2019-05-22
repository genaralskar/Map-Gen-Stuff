using UnityEngine;

[CreateAssetMenu(menuName = "Values/float")]
public class FloatValue : ScriptableObject
{
    public float value;

    public static implicit operator float(FloatValue floatValue)
    {
        return floatValue.value;
    }
}

