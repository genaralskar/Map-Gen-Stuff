using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AdvanceMapLevel : MonoBehaviour
{
    public float waitTime = 2f;
    
    public void AdvanceLevel()
    {
        Invoke(nameof(Advance), waitTime);
    }

    private void Advance()
    {
        LevelManager.NextLevel?.Invoke(waitTime);
    }
}
