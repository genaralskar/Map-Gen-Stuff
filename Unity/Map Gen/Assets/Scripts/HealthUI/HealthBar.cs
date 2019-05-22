using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{
    public Image healthBar;
    public TextMeshProUGUI healthAmountText;

    private bool healthText = false;

    private void Awake()
    {
        healthText = !(healthAmountText == null);
    }

    public void UpdateHealth(int currentHealth, int maxHealth)
    {
        float normalizedHealth = (float) currentHealth / maxHealth;
        UpdateFill(normalizedHealth);
        UpdateText(currentHealth);
    }

    public void UpdateFill(float amount)
    {
        if (healthBar == null) return;
        healthBar.fillAmount = amount;
    }

    public void UpdateText(int currentHealth)
    {
        healthAmountText.text = currentHealth.ToString();
    }
}
