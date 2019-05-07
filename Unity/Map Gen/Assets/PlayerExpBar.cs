using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class PlayerExpBar : MonoBehaviour
{
    public Image expFill;
    public TextMeshProUGUI expText;
    
    void Awake()
    {
        Experience.ExpUpdated += UpdateExp;
    }

    public void UpdateExp(int currentAmount, int nextLevelAmount)
    {
        UpdateFill((float)currentAmount/nextLevelAmount);
        UpdateText(currentAmount, nextLevelAmount);
    }

    private void UpdateFill(float amount)
    {
        expFill.fillAmount = amount;
    }

    private void UpdateText(int currentAmount, int nextLevelAmount)
    {
        expText.text = currentAmount.ToString() + "/" + nextLevelAmount.ToString();
    }
}
