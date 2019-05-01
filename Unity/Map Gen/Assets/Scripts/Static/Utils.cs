using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Utils
{
    public static void DebugLogArray<T>(IEnumerable<T> array, string prefix = "", string suffix = "")
    {
        foreach (var t in array)
        {
            Debug.Log(prefix + t + suffix);
        }
    }
}
