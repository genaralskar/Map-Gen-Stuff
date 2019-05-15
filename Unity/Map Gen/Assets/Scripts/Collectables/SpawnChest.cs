using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnChest : MonoBehaviour
{
    public int numKeys;
    public GameObject chest;
    public GameObject key;
    
    private List<Transform> spawnLocations;
    
    private void Start()
    {
        SpawnModules.SpawnChest += Spawn;
    }

    private void Spawn(List<GameObject> modules)
    {
        GetRooms(modules);
        PlaceObjects(spawnLocations);
    }

    private void GetRooms(List<GameObject> modules)
    {
        spawnLocations = new List<Transform>();
        
        List<int> currentRooms = new List<int>();
        
        for (int i = 0; i < numKeys + 1; i += 0)
        {
            int index = Random.Range(1, modules.Count);
            
            if (currentRooms.Contains(index)) continue;
            
            currentRooms.Add(index);
            Transform newLoc = modules[index].transform;
            spawnLocations.Add(newLoc);
            i++;
        }
    }

    private void PlaceObjects(List<Transform> locations)
    {
        GameObject newChest = Instantiate(chest, locations[0]);
        KeyCheck kc = newChest.GetComponent<KeyCheck>();
        kc.keyCount = numKeys;
        
        locations.RemoveAt(0);

        foreach (var loc in locations)
        {
            GameObject newKey = Instantiate(key, loc);
            newKey.GetComponent<PickupKey>().chest = kc;
        }
    }
    
}
