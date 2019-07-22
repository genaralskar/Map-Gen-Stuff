using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Inventory : MonoBehaviour
{
    public static int gold = 0;

    public static UnityAction<int> goldUpdated;
    
    public static void AddGold(int amount)
    {
        gold += amount;
        goldUpdated?.Invoke(gold);
    }
}
