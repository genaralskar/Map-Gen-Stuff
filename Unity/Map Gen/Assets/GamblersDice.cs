using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class GamblersDice : MonoBehaviour
{
    public int loops = 1000;
    public int dieThrows = 1;
    public HitData[] data;


    public void TestIt()
    {
        ClearData();
        PopulateData();
        
        for (int i = 0; i < loops; i++)
        {
            //roll D6
            int dieChoose = Random.Range(1, 7);
        
            ChooseDice(dieChoose, dieThrows);
        }
        
    }

    private void ChooseDice(int die, int amount)
    {
        int damage = 0;
        for (int i = 0; i < amount; i++)
        {
            switch (die)
            {
                case 1:
                    damage += RollDice(4);
                    break;
            
                case 2:
                    damage += RollDice(6);
                    break;
            
                case 3:
                    damage += RollDice(8);
                    break;
            
                case 4:
                    damage += RollDice(10);
                    break;
            
                case 5:
                    damage += RollDice(12);
                    break;
            
                case 6:
                    damage += RollDice(20);
                    break;
            
                default:
                    Debug.LogWarning("Something went wrong");
                    break;
            }
        }
        data[damage - 1].amount++;
    }

    public void PopulateData()
    {
        data = new HitData[(20 * dieThrows)];
        for (var i = 0; i < (20 * dieThrows); i++)
        {
            data[i] = new HitData { damage = i + 1, amount = 0};
        }
    }

    public void ClearData()
    {
        data = new HitData[0];
    }
    
    
    public int RollDice(int sides)
    {
        return Random.Range(1, sides + 1);
    }

    public float AverageDamage()
    {
        float damage = 0;
        foreach (var hd in data)
        {
            damage += hd.damage * hd.amount;
        }

        return damage / loops;
    }
}

[System.Serializable]
public struct HitData
{
    public int damage;
    public int amount;
}

#if UNITY_EDITOR
[CustomEditor (typeof(GamblersDice))]
public class GamblersDiceEditor : Editor {
    public override void OnInspectorGUI () {
        GamblersDice training = (GamblersDice)target;
        if(GUILayout.Button("Test"))
        {
            training.TestIt();
        }

        GUILayout.Label("Average Damage: " + training.AverageDamage());
        DrawDefaultInspector ();
    }
}
#endif