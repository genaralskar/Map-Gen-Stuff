using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

/// <summary>
/// Populates a prefab among nodes (Empty GameObjects) defined by the user
/// Can be used for walls, doors, props, etc
/// </summary>

public class PopulateNodes : MonoBehaviour
{
    public GameObject prefab;
    public Transform nodeParent;
    
    //[HideInInspector]
    public List<Transform> nodes;
    [HideInInspector]
    public List<GameObject> currentGameObjects;

    public virtual void Populate()
    {
        if(nodeParent != null)
            GetNodes();
        
        foreach (var node in nodes)
        {
            GameObject newWall = Instantiate(prefab, node);
            currentGameObjects.Add(newWall);
            print("spawning door");
        }
    }

    public void Clear()
    {
        foreach (var walll in currentGameObjects)
        {
            DestroyImmediate(walll);
        }
        nodes = new List<Transform>();
    }

    private void GetNodes()
    {
        Clear();
        foreach (Transform child in nodeParent)
        {
            nodes.Add(child);
        }
    }
}

#if UNITY_EDITOR
[CustomEditor (typeof(PopulateNodes))]
public class PopulateWallsEditor : Editor {
    public override void OnInspectorGUI () {
        PopulateNodes training = (PopulateNodes)target;

        if(GUILayout.Button("Populate"))
        {
            training.Populate();
        }
        
        if(GUILayout.Button("Clear"))
        {
            training.Clear();
        }
        

        DrawDefaultInspector ();
    }
}
#endif