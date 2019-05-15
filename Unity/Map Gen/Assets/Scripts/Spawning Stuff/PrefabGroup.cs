using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Map Gen/Prefab Group")]
public class PrefabGroup : ScriptableObject
{
    [SerializeField] private List<GameObject> objects;

    private GameObject ObjectToSpawn => GetRandomObject();

    public static implicit operator GameObject(PrefabGroup prefabGroup)
    {
        return prefabGroup.ObjectToSpawn;
    }
    
    public GameObject GetRandomObject()
    {
        int randIndex = Random.Range(0, objects.Count);
        return objects[randIndex];
    }
}
