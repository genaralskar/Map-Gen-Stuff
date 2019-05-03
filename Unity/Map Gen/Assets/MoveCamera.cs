using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveCamera : MonoBehaviour
{    
    public void MovePosition(Transform followPoint)
    {
        transform.position = followPoint.position;
        transform.rotation = followPoint.rotation;
    }
}
