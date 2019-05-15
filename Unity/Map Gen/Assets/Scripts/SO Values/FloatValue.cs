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

[CreateAssetMenu(menuName = "Values/int")]
public class IntValue : ScriptableObject
{
    public int value;

    public static implicit operator int(IntValue value)
    {
        return value.value;
    }
}