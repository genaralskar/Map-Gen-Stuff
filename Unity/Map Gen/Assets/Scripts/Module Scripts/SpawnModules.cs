using System.Collections;
using System.Collections.Generic;
using System.Numerics;
using UnityEditor;
using UnityEditor.Experimental.GraphView;
using UnityEngine;
using Quaternion = UnityEngine.Quaternion;
using Vector3 = UnityEngine.Vector3;

/// <summary>
/// Used to spawn rooms (modules) at connecting node points
/// </summary>

public class SpawnModules : MonoBehaviour
{
    public GameObject doorPrefab;
    public Transform roomContainer;
    public List<GameObject> spawnableModules;
    public int maxIterations = 10;
    public int maxWidth = 10;
    public int maxHeight = 10;
    public int seed = 0;
    
    [HideInInspector]
    public int internalSeed;

    public bool[,] takenSpots;

    public LayerMask roomLayer;
    public List<GameObject> currentModules;
    public List<Transform> currentNodes;

    public List<Transform> doorNodes;

    
    public IEnumerator Spawn()
    {
        Clear();
        
        //set random seed
        internalSeed = seed != 0 ? seed : Random.Range(0, 1000000);
        Random.InitState(internalSeed);
        
        
        
        for (int i = 0; i < maxIterations;)
        {
            //OpenNodeCheck();
            
            //choose a random modules
            int randMod = Random.Range(0, spawnableModules.Count);
            GameObject newMod = Instantiate(spawnableModules[randMod], roomContainer);
            newMod.name = ("Room " + currentModules.Count);
            ModuleNodes newModuleNodes = newMod.GetComponent<ModuleNodes>();
            
            if (currentModules.Count == 0)
            {
                currentModules.Add(newMod);
                foreach (var node in newModuleNodes.Nodes)
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
                int randMagnetNode = Random.Range(0, newModuleNodes.Nodes.Count);
                Transform newNode = newModuleNodes.Nodes[randMagnetNode];
                Debug.Log("Random Nodes chosen");
                
                //move, collision check, rotate stuff
                
                
                Debug.Log("Doing Move stuff");
                
                //rotate newMod to match orientation of newNode and oldNode
                int p = 0;
                while (p < 4)
                {
                    float angle = Quaternion.Angle(newNode.rotation, oldNode.rotation);
                    if (angle > 179)
                    {
                        Debug.Log("peices alligned before placing! angle = " + angle +
                                  "\nnewNode Rotation = " + newNode.rotation.eulerAngles +
                                  "\noldNode Rotation = " + oldNode.rotation.eulerAngles);
                        break;
                    }
                    else
                    {
                        //rotate, try again
                        Vector3 currentRot = newMod.transform.rotation.eulerAngles;
                        currentRot.y += 90;
                        currentRot.y = Mathf.Round(currentRot.y);
                        Quaternion rotQuat = Quaternion.Euler(currentRot);
                        newMod.transform.rotation = rotQuat;
                    }
                    p++;
                }
                

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
                Collider[] modColliders = Physics.OverlapBox(newMod.transform.position, colliderSize, Quaternion.identity, roomLayer);
                Debug.Log("Collider size: " + colliderSize);
                Debug.Log("Collider pos: " + newMod.transform.position);
                
                //if colliding with something, don't add the piece, otherwise add the piece
                if (modColliders.Length > 1)
                {
                    Debug.Log("couldn't fit it");
                    DestroyImmediate(newMod);
                }
                else
                {
                    Debug.Log("no collision detected, placing module");
                    currentModules.Add(newMod);

                    foreach (var node in newModuleNodes.Nodes)
                    {
                        Debug.Log("Adding new Node");
                        currentNodes.Add(node);
                    }
                    
                    doorNodes.Add(oldNode);
                    currentNodes.Remove(oldNode);

                    i++;
                }
               
            }
            OpenNodeCheck();
        }
        
        PlaceDoors();
    }

    private void PlaceDoors()
    {
        foreach (var node in doorNodes)
        {
            if(Random.Range(0f,1f) < .5f)
                Instantiate(doorPrefab, node);
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
            Collider[] nodeColliders = Physics.OverlapSphere(node.position, .1f, roomLayer);
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
        doorNodes.Clear();
        
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
        SpawnModules spawner = (SpawnModules)target;

        if (Application.isPlaying)
        {
           if(GUILayout.Button("Spawn"))
           {
               spawner.StartCoroutine(spawner.Spawn());
           }
            
           if(GUILayout.Button("Clear")){
               spawner.Clear();
           }
            
           GUILayout.Label("Current Seed: " + spawner.internalSeed); 
        }
        DrawDefaultInspector ();
    }
}
#endif
