using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class UpdateCollectableInfo : MonoBehaviour
{
    public IntValue currentFloor;
    public TextMeshProUGUI currentFloorText;
    
    public IntValue reqKeys;
    public TextMeshProUGUI reqKeysText;
    
    public IntValue currentKeys;
    public TextMeshProUGUI currentKeysText;

    private void Awake()
    {
        SpawnModules.LevelBuildEnd += NewFloorValues;
        PickupKey.keyPickUp += KeyPickup;
    }

    private void NewFloorValues()
    {
        Debug.Log("updating text!");
        currentFloorText.text = currentFloor.value.ToString();
        reqKeysText.text = reqKeys.value.ToString();
        currentKeysText.text = currentKeys.value.ToString();
    }

    private void KeyPickup()
    {
        currentKeysText.text = currentKeys.value.ToString();
    }
    
}
