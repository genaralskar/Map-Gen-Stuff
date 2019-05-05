using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TabMap : MonoBehaviour
{
    public GameObject tabMenu;
    public string inputName;

    private void Update()
    {
        if (Input.GetButtonDown(inputName))
        {
            tabMenu.SetActive(true);
        }

        if (Input.GetButtonUp(inputName))
        {
            tabMenu.SetActive(false);
        }
    }
}
