using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnObjects : MonoBehaviour
{
    public PrefabGroup prefabGroup;

    public Vector2 amountRange = new Vector2(0, 3);
    public Transform parent;
    
    public bool autoSetup = true;
    public bool doCollisionCheck = false;
    
    public Vector3 spawnBox;
    public Vector3 spawnOffset;
    public float minimumSpacing = 2f;

    public GameObject testEnemy;

    private void OnValidate()
    {
        if(autoSetup)
        {
            BoxCollider col = GetComponent<BoxCollider>();
            {
                if (col == null)
                {
                    Debug.LogWarning("No box collider, can't auto setup spawn bounds. Defaulting to no autoSetup");
                    autoSetup = false;
                    return;
                }

                spawnBox = col.size;
                spawnBox -= new Vector3(1, 0, 1);
                spawnOffset = col.center;
            }
        }
    }

    protected void SpawnObjectsHandler()
    {
        //Debug.Log("Spawning started!");
        //get number of objects to spawn
        int numToSpawn = Random.Range((int)amountRange.x, (int)amountRange.y);

        //get places for objects to spawn
        List<Vector3> spawnPoints = FindRandomPoints(numToSpawn);
        
        //spawn objects at each point
        Spawn(spawnPoints);
    }

    private Vector3 RandomPosInBox(Vector3 bounds, Vector3 offset)
    {
        float yAngle = transform.rotation.eulerAngles.y;
        if ((yAngle > 89 && yAngle < 91) || (yAngle > -91 && yAngle < -89))
        {
            Vector3 temp = bounds;
            bounds.x = temp.y;
            bounds.y = temp.x;
        }
        
        Vector3 newPos = Vector3.zero;
        Vector3 halfBounds = bounds / 2;
        
        newPos.x = Random.Range(-halfBounds.x, halfBounds.x);
        newPos.z = Random.Range(-halfBounds.y, halfBounds.y);
        
        newPos += offset;

        return newPos;
    }

    private List<Vector3> FindRandomPoints(int numToSpawn)
    {
        List<Vector3> spawnPoints = new List<Vector3>();
        
        //if finding new point fails more times than this, just use what you got
        int maxFails = 10;
        //get random positions in bounding box
        for (int i = 0; i < numToSpawn; i += 0)
        {
            Vector3 newPoint = RandomPosInBox(spawnBox, spawnOffset);

            //for each new point, do distance check between enimies, make sure they don't overlap
            bool enoughSpace = true;
            foreach (var point in spawnPoints)
            {
                if (Vector3.Distance(newPoint, point) < minimumSpacing)
                    enoughSpace = false;
                break;
            }

            //if enough space, add new point to list, move to next new point
            if (enoughSpace)
            {
                spawnPoints.Add(newPoint);
                i++;
            }
            else
            {
                maxFails--;
                if (maxFails <= 0)
                {
                    break;
                }
            }
        }

        return spawnPoints;
    }

    private void Spawn(List<Vector3> spawnPoints)
    {
        foreach (var point in spawnPoints)
        {
            GameObject newObj;
            if (parent != null)
            {
                newObj = Instantiate(prefabGroup.GetRandomObject(), parent);
            }
            else
            {
                newObj = Instantiate(prefabGroup.GetRandomObject());
            }
            //Debug.Log(newObj);
            newObj.transform.position = point + transform.position + Vector3.up;
            //Debug.Log("Spawned " + newObj + " at " + point);
        }
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireCube(transform.position + spawnOffset, spawnBox);
    }
}
