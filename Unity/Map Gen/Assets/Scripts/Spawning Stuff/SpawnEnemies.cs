using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnEnemies : SpawnObjects
{
    private void Start()
    {
        SpawnModules.SpawnEnemies += SpawnObjectsHandler;
    }

    private void OnDestroy()
    {
        SpawnModules.SpawnEnemies -= SpawnObjectsHandler;
    }
}
