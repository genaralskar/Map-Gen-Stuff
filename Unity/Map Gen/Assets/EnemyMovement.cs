using System.Collections;
using System.Collections.Generic;
using System.Numerics;
using UnityEngine;
using Quaternion = UnityEngine.Quaternion;
using Vector3 = UnityEngine.Vector3;

[RequireComponent(typeof(CharacterController))]
public class EnemyMovement : MonoBehaviour
{
    [Tooltip("Used for knockback")]
    public Health health;
    
    public Transform player;
    public float range = 10f;
    public LayerMask playerInRangeLayers;
    public LayerMask attackRangeLayers;

    public float moveSpeed = 3f;
    public float rotateSpeed = 50f;
    public float stoppingDistance = 1f;

    [Range(0, 1)] public float additionalMovementDamper = 0.8f;

    public bool move = true;
    public bool rotate = true;

    private CharacterController cc;
    private Vector3 directionTowardsPlayer;
    private float distanceFromPlayer;
    private Vector3 additionalMovement;
    
    void Awake()
    {
        cc = GetComponent<CharacterController>();
        additionalMovement = Vector3.zero;
        if (health != null)
        {
            health.KnockedBack += Knockback;
        }
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
            //Debug.Log(distanceFromPlayer);
            //if hit player, move towards player
            //rotate towards player as well
            Move();
            
            if(rotate)
                Rotate();
        }
        
        AdditionaMovementCooldown();
        
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
        Vector3 newMove = Vector3.zero;
        
        if(move && !InStoppingDistance())
            newMove += directionTowardsPlayer.normalized * moveSpeed;
        
        newMove += additionalMovement;
        //Debug.Log(newMove);
        cc.Move(newMove * Time.deltaTime);
    }

    public void Knockback(Knockback source)
    {
        //Debug.Log("Adding Knockback!");
        Vector3 direction = source.transform.forward * source.amount;
        additionalMovement += direction;
        //Debug.Log(additionalMovement);
    }
    
    public void Knockback(Vector3 direction)
    {
        additionalMovement += direction;
    }

    public void AdditionaMovementCooldown()
    {
        if (additionalMovement.magnitude <= .01f)
        {
            additionalMovement = Vector3.zero;
            return;
        }

        additionalMovement *= additionalMovementDamper;
    }
}
