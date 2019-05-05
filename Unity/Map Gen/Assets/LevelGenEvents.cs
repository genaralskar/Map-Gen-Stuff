using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class LevelGenEvents : MonoBehaviour
{
    public UnityEvent levelGenStart;
    public UnityEvent levelGenEnd;

    private void Start()
    {
        SpawnModules.LevelBuildStart += LevelGenStartHandler;
        SpawnModules.LevelBuildEnd += LevelGenEndHandler;
    }

    private void LevelGenStartHandler()
    {
        levelGenStart?.Invoke();
    }

    private void LevelGenEndHandler()
    {
        levelGenEnd?.Invoke();
    }
}
