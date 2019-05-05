using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveCamera : MonoBehaviour
{
    public bool rotate = true;
    public bool maintainOffset = false;
    public Transform offsetPoint;

    private Vector3 offset;

    private void Start()
    {
        offset = Vector3.zero;
        if(maintainOffset)
            offset = offsetPoint.position - transform.position;
    }

    private void LateUpdate()
    {
        if (offsetPoint != null)
        {
            MovePosition(offsetPoint);
        }
    }

    public void MovePosition(Transform followPoint)
    {
        transform.position = followPoint.position - offset;
        if(rotate)
            transform.rotation = followPoint.rotation;
    }
}
