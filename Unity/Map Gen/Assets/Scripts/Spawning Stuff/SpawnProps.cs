using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnProps : SpawnObjects
{
    private void Start()
    {
        SpawnModules.SpawnProps += SpawnObjectsHandler;
    }
    
    private void OnDestroy()
    {
        SpawnModules.SpawnProps -= SpawnObjectsHandler;
    }
}
