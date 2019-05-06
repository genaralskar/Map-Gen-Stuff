using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]
public class EnemyMovement : MonoBehaviour
{
    public Transform player;
    public float range = 10f;
    public LayerMask playerInRangeLayers;
    public LayerMask attackRangeLayers;

    public float moveSpeed = 3f;
    public float rotateSpeed = 50f;
    public float stoppingDistance = 1f;

    private CharacterController cc;
    private Vector3 directionTowardsPlayer;
    private float distanceFromPlayer;
    
    void Awake()
    {
        cc = GetComponent<CharacterController>();
    }

    private void Start()
    {
        player = PlayerController.playerTransform;
    }

    void Update()
    {
        if (!SpawnModules.levelSpawned) return;
        
        
        directionTowardsPlayer = player.position - transform.position;
        distanceFromPlayer = Vector3.Distance(transform.position, player.position);
        
        //raycast to player
        if (distanceFromPlayer > range) return;
        
        if (PlayerInMoveRange(distanceFromPlayer))
        {
            Rotate();
            if (!InStoppingDistance())
            {
                Debug.Log(distanceFromPlayer);
                //if hit player, move towards player
                //rotate towards player as well
                Move();
            }
            
        }
        
    }

    public bool PlayerInMoveRange(float distance)
    {
        //Debug.Log(directionTowardsPlayer);
        Ray ray = new Ray(transform.position, directionTowardsPlayer);
        return !Physics.Raycast(ray, distance, playerInRangeLayers);
    }

    public bool PlayerInAttackRange(float distance)
    {
        Ray ray = new Ray(transform.position, directionTowardsPlayer);
        return Physics.Raycast(ray, distance, attackRangeLayers);
    }

    public bool InStoppingDistance()
    {
        return distanceFromPlayer < stoppingDistance;
    }

    public void Rotate()
    {
        transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(directionTowardsPlayer), rotateSpeed);
    }

    public void Move()
    {
        cc.Move(directionTowardsPlayer.normalized * moveSpeed * Time.deltaTime);
    }
}
