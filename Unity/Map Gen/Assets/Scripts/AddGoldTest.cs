using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AddGoldTest : MonoBehaviour
{
    public void AddGold(int amount)
    {
        Inventory.AddGold(amount);
    }
}
