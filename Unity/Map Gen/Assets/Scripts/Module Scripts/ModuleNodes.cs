using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(BoxCollider))]

public class ModuleNodes : MonoBehaviour
{
    public Transform nodesParent;

    public List<Transform> Nodes
    {
        get
        {
            if (nodes == null)
            {
                GetNodes();
            }

            return nodes;
        }
    }

    private List<Transform> nodes;

    
    private void GetNodes()
    {
        nodes = new List<Transform>();
        foreach (Transform node in nodesParent)
        {
            nodes.Add(node);
        }
    }
}
