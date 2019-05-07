using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Experience : MonoBehaviour
{
    public static UnityAction<int, int> ExpUpdated;
    
    public int currentExp = 0;
    public int expToNextLevel = 100;
    public int totalExp;
    public int totalNeededExp = 100;

    public Health playerHealth;
    
    public void AddExperience(int amount)
    {
        currentExp += amount;
        totalExp += amount;
        if (currentExp >= expToNextLevel)
        {
            LevelUp();
        }

        ExpUpdated?.Invoke(currentExp, expToNextLevel);
    }
    
    private void LevelUp()
    {
        //Update Exp
        GetNextExpToLevel();
        
        //Increase Health
        playerHealth.IncreaseMaxHealth(10);
        
        //Restore Health
        playerHealth.AddHealth(playerHealth.maxHealth, null);
    }

    private void GetNextExpToLevel()
    {
        currentExp -= expToNextLevel;
        expToNextLevel += Mathf.RoundToInt(expToNextLevel * 0.2f);
        totalNeededExp += expToNextLevel;
    }
}
