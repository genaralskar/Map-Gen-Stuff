using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AdvanceMapLevel : MonoBehaviour
{
    public float waitTime = 5f;
    
    public void AdvanceLevel()
    {
        LevelManager.NextLevel?.Invoke(waitTime);
    }
}
