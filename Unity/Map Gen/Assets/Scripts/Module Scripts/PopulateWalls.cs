using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(ModuleNodes))]
public class PopulateWalls : PopulateNodes
{
    public static UnityAction PopulateWallsAction;
    
    private ModuleNodes modNodes;

    private void Start()
    {
        modNodes = GetComponent<ModuleNodes>();
        PopulateWallsAction += Populate;
    }

    public override void Populate()
    {
        nodes = modNodes.WallNodes;
        nodeParent = null;
        //Debug.Log(nodes.Count);
        base.Populate();
    }

    private void OnDestroy()
    {
        PopulateWallsAction -= Populate;
    }
}
