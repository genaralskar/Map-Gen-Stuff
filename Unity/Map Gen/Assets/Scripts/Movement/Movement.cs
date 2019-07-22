using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    public CharacterController cc;

    public float speed = 5;
    public float sprintMod = 2;
    public float jumpAmount = 0;
    public float gravity;

    private Vector3 moveVector;
    
    private void Update()
    {
        Input();
        Move();
    }

    public void Input()
    {
        
    }
    
    public void Move()
    {
        
    }

}
