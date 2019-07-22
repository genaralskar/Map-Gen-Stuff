using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class UpdateGoldCount : MonoBehaviour
{

    public TextMeshProUGUI goldCountText;
    
    private void Awake()
    {
        Inventory.goldUpdated += GoldUpdatedHandler;
        GoldUpdatedHandler(Inventory.gold);
    }

    private void GoldUpdatedHandler(int amount)
    {
        goldCountText.text = amount.ToString();
    }
}
