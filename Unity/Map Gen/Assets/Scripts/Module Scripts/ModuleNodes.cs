using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(BoxCollider))]

public class ModuleNodes : MonoBehaviour
{
    public Transform doorNodesParent;
    public Transform wallNodesParent;

    public bool randomNodes = false;
    public int minDoors = 1;
    public int maxDoors = 3;
    [Range(0,1)]
    public float randomChance;

    private int currentDoors;

    private List<Transform> doorNodes;
    public List<Transform> DoorNodes
    {
        get
        {
            if (doorNodes == null)
            {
                doorNodes = GetNodes(doorNodesParent);
                if(randomNodes)
                    GetRandomDoorNodes();
                
                //Debug.Log("populating door nodes " + doorNodes.Count);
            }

            return doorNodes;
        }
    }

    private List<Transform> wallNodes;
    public List<Transform> WallNodes
    {
        get
        {
            if (wallNodes == null)
            {
                //Debug.Log("populating wallnodes");
                wallNodes = GetNodes(wallNodesParent);
                //Debug.Log(wallNodes.Count);
            }

            return wallNodes;
        }
    }

    
    private List<Transform> GetNodes(Transform parent)
    {
        List<Transform> newNodes = new List<Transform>();
        foreach (Transform node in parent)
        {
            newNodes.Add(node);
        }
        //Debug.Log("getting nodes" + newNodes.Count);
        return newNodes;
    }
    

    private void GetRandomDoorNodes()
    {
        bool skip = false;
        while (doorNodes.Count < minDoors)
        {
            currentDoors = 0;
            foreach (var node in WallNodes)
            {
                if (currentDoors >= maxDoors)
                    return;

                if (skip)
                {
                    skip = false;
                    continue;   
                }
                
                float rand = Random.Range(0f, 1f);
            

                if (rand < randomChance)
                {
                    doorNodes.Add(node);

                    currentDoors++;
                    
                    //skip an itteration to avoid doors next to each other
                    skip = true;
                }
            }

            //when adding to doorNodes, remove from wallNodes
            foreach (var node in doorNodes)
            {
                if (wallNodes.Contains(node))
                    wallNodes.Remove(node);
            }
        }
    }
}
