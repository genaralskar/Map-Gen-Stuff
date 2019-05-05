using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public static class SetupRoom
{
    [MenuItem("Room Generator/Setup Room/Module Walls")]
    public static void SetupCurrentObject()
    {
        GameObject currentObject = Selection.activeGameObject;
        if (currentObject == null) return;
        
        Debug.Log(currentObject);
        
        //spawn Door Node Empty
        //spawn Wall Node Empty
        //spawn Art Empty
    }
}
