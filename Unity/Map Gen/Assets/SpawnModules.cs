using System.Collections;
using System.Collections.Generic;
using System.Numerics;
using UnityEditor;
using UnityEngine;
using Quaternion = UnityEngine.Quaternion;
using Vector3 = UnityEngine.Vector3;

public class SpawnModules : MonoBehaviour
{
    public List<GameObject> spawnableModules;
    public int maxIterations = 10;
    public int maxWidth = 10;
    public int maxHeight = 10;
    public int seed = 0;

    public bool[,] takenSpots;

    
    public List<GameObject> currentModules;
    
    public List<Transform> currentNodes;
    
    
    //THIS NEEDS TO BE MOVED INTO A COROUTINE BECAUSE SPAWNING, MOVING, AND COLLISION CHECKS HAPPEN IN A FRAME
    //BUT THE PHYSICS CHECK DON'T WORK PROPERLY BEACUSE THEY USE FIXED UPDATE, SO THE COLLISION STUFF DOESN'T UPDATE
    //AS FAST AS THE POSITION STUFF DOES
    //maybe force an update call?
    public IEnumerator Spawn()
    {
        Random.InitState(seed);
        for (int i = 0; i < maxIterations; i++)
        {
            //OpenNodeCheck();
            
            //choose a random modules
            int randMod = Random.Range(0, spawnableModules.Count);
            GameObject newMod = Instantiate(spawnableModules[randMod]);
            newMod.name = ("Room " + currentModules.Count);
            Nodes newNodes = newMod.GetComponent<Nodes>();
            
            if (currentModules.Count == 0)
            {
                currentModules.Add(newMod);
                foreach (var node in newNodes.nodes)
                {
                    currentNodes.Add(node);
                }
            }
            else
            {
                //check if there are any more nodes available
                if (currentNodes.Count == 0)
                {
                    Debug.Log("No more nodes to use!");
                    break;
                }
                
                //choose random node from world nodes
                int randPlacementNode = Random.Range(0, currentNodes.Count);
                Transform oldNode = currentNodes[randPlacementNode];
                Transform oldMod = oldNode.parent.parent;
                
                
                //choose random node from module nodes
                int randMagnetNode = Random.Range(0, newNodes.nodes.Count);
                Transform newNode = newNodes.nodes[randMagnetNode];
                Debug.Log("Random Nodes chosen");
                
                //move, collision check, rotate stuff
                
                int j = 0;
                Debug.Log("Doing Move stuff");
                while (j < 4)
                {
                    //move into place
                    //move newMod in place, do collision check check
                    Vector3 newPos = GetNewModualPosition(oldMod.position, oldNode.position, newMod.transform.position, newNode.position);
                    newMod.transform.position = newPos;
                    Debug.Log("new pos = " + newPos);
                    yield return new WaitForFixedUpdate();
                    //yield return new WaitForSeconds(.1f);
                    
                    
                    //collision check
                    Vector3 colliderSize = (newMod.GetComponent<Collider>().bounds.size);
                    colliderSize /= 2;
                    colliderSize -= new Vector3(.1f, .1f, .1f);
                    Collider[] modColliders = Physics.OverlapBox(newMod.transform.position, colliderSize);
                    Debug.Log("Collider size: " + colliderSize);
                    Debug.Log("Collider pos: " + newMod.transform.position);
                    //Physics.OverlapBoxNonAlloc(newMod.transform.position, (Vector3.one), modColliders)
                    if (modColliders.Length > 1)
                    {
                        //rotate, try again
                        Vector3 currentRot = newMod.transform.rotation.eulerAngles;
                        currentRot.y += 90;
                        currentRot.y = Mathf.Round(currentRot.y);
                        Quaternion rotQuat = Quaternion.Euler(currentRot);
                        newMod.transform.rotation = rotQuat;
                        Utils.DebugLogArray(modColliders);
                        Debug.Log("rotating");
                    }
                    else
                    {
                        Debug.Log("no collision detected, " + j + " loops");
                        break;
                    }
                    j++;
                }

                //if not rortated too much, add mod and nodes, else skip and get rid of it
                if (j != 4)
                {
                    currentModules.Add(newMod);

                    foreach (var node in newNodes.nodes)
                    {
                        Debug.Log("Adding new Node");
                        currentNodes.Add(node);
                    }
                }
                else
                {
                    Debug.Log(j + "loops, couldn't fit it");
                    DestroyImmediate(newMod);
                }
               
            }
            OpenNodeCheck();
        }
        
    }

    //returns the position a new modual should be placed at based on node positions
    private Vector3 GetNewModualPosition(Vector3 oldModPos, Vector3 oldNodePos, Vector3 newModPos, Vector3 newNodePos)
    {
        
        //get oldNodePos offset
        Vector3 oldNodeOffset = oldNodePos - oldModPos;
        
        //get newNodePos offset
        Vector3 newNodeOffset = newNodePos - newModPos;
        
        //get new position
        Vector3 newPos = oldModPos - newNodeOffset + oldNodeOffset;

        return newPos;
    }

    //remove nodes that are next to a module
    private void OpenNodeCheck()
    {
        Debug.Log("Open Node Check");
        List<Transform> nodesToRemove = new List<Transform>();
        foreach (var node in currentNodes)
        {
            //Collider[] colliders = new Collider[3];
            Collider[] nodeColliders = Physics.OverlapSphere(node.position, .1f);
            //Physics.OverlapSphereNonAlloc(node.position, .1f, colliders)
            if (nodeColliders.Length > 1)
            {
                Debug.Log(node.transform.parent.parent.name + " " + node.name);
                print(node.position);
                Utils.DebugLogArray(nodeColliders, "node colliders: ");
                //node is colliding!!!!
                nodesToRemove.Add(node);
            }
            Debug.Log("============");
        }

        foreach (var node in nodesToRemove)
        {
            if (!currentNodes.Contains(node))
            {
                Debug.Log("Node is not in current node list!");
            }
            
            Debug.Log("Removing Overlapping Node");
            currentNodes.Remove(node);
            node.gameObject.SetActive(false);
        }
    }
    
    public void Clear()
    {
        currentNodes.Clear();
        
        foreach (var mod in currentModules)
        {
            DestroyImmediate(mod);
        }
        
        currentModules.Clear();
    }
}

#if UNITY_EDITOR
[CustomEditor (typeof(SpawnModules))]
public class SpawnModulesEditor : Editor {
    public override void OnInspectorGUI () {
        SpawnModules training = (SpawnModules)target;
        if(GUILayout.Button("Spawn"))
        {
            training.StartCoroutine(training.Spawn());
        }
        if(GUILayout.Button("Clear")){
            training.Clear();
        }
        DrawDefaultInspector ();
    }
}
#endif
