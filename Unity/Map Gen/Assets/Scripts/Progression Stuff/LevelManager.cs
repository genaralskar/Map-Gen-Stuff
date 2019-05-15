using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class LevelManager : MonoBehaviour
{
    public static UnityAction<float> NextLevel;
    
    public SpawnModules spawnModules;
    public SpawnChest spawnChest;

    public GameObject player;

    public int currentLevel = 1;
    public int RoomAmount => currentLevel + 10;
    public int KeyAmount => (int)(RoomAmount * .25f);

    private void Awake()
    {
        NextLevel += NextLevelHandler;
    }

    private void Start()
    {
        StartLevelOne();
    }

    private void StartLevelOne()
    {
        spawnModules.maxIterations = RoomAmount;
        spawnChest.numKeys = KeyAmount;

        player.transform.position = Vector3.zero;
        spawnModules.SpawnRooms();
    }

    private void NextLevelHandler(float waitTime)
    {
        //wait
        
        currentLevel++;
        //Debug.Log("current level = " + currentLevel);
        spawnModules.maxIterations = RoomAmount;
        //Debug.Log("room count = " + spawnModules.maxIterations);
        spawnChest.numKeys = KeyAmount;
        //Debug.Log("keys amount = " + spawnChest.numKeys);

        
        CharacterController cc = player.GetComponent<CharacterController>();
        cc.enabled = false;
        player.transform.position = Vector3.zero;
        cc.enabled = true;
        
        spawnModules.SpawnRooms();
    }
}
