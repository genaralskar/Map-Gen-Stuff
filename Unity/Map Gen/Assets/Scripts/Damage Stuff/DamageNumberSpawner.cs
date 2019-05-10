using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Events;

public class DamageNumberSpawner : MonoBehaviour
{
    public static UnityAction<int, Transform> spawnDamagerNumbers;

    public Camera cam;
    public Transform canvas;
    public GameObject damageNumbers;

    private void Awake()
    {
        if (canvas == null)
        {
            canvas = transform;
        }

        if (cam == null)
        {
            cam = Camera.main;
        }

        spawnDamagerNumbers += SpawnNumbers;
    }


    public void SpawnNumbers(int amount, Transform obj)
    {
        //spawn damage numbers, parent to canvas
        GameObject newNumbers = Instantiate(damageNumbers, canvas);
        
        //get text compoenet
        TextMeshProUGUI numberText = newNumbers.GetComponent<TextMeshProUGUI>();
        
        //set text to amount
        numberText.text = amount.ToString();
        
        //get damage number componenet
        DamageNumber dn = newNumbers.GetComponent<DamageNumber>();
        
        //set values on dn
        dn.cam = cam;
        dn.parent = obj;
        
        print("numbers spawned");
    }
}
