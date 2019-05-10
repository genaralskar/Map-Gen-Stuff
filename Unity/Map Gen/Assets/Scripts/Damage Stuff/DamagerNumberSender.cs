using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class DamagerNumberSender : MonoBehaviour
{
    public Health health;
//    public GameObject damageNumbers;
//    public Camera cam;
//    public Transform canvas;

    private void Start()
    {
        health.HealthRemoved += HealthRemovedHandler;
    }

    private void HealthRemovedHandler(int amount)
    {
        DamageNumberSpawner.spawnDamagerNumbers(amount, transform);
        Debug.Log("Spawn message sent");
//        //spawn damage numbers, parent to canvas
//        GameObject newNumbers = Instantiate(damageNumbers, canvas);
//        
//        //get text compoenet
//        TextMeshProUGUI numberText = newNumbers.GetComponent<TextMeshProUGUI>();
//        
//        //set text to amount
//        numberText.text = amount.ToString();
//        
//        //get damage number componenet
//        DamageNumber dn = newNumbers.GetComponent<DamageNumber>();
//        
//        //set values on dn
//        dn.cam = cam;
//        dn.parent = transform;
    }
}
