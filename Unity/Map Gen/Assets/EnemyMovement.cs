using System.Collections;
using System.Collections.Generic;
using System.Numerics;
using JetBrains.Annotations;
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
    public float knockoutTime = 2f;

    public bool move = true;
    public bool rotate = true;

    private CharacterController cc;
    private Vector3 directionTowardsPlayer;
    private float distanceFromPlayer;
    private Vector3 moveVector;
    private Vector3 additionalMovement;
    private bool knockedDown = false;
    
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
        
        moveVector = Vector3.zero;
        //if (distanceFromPlayer > range) return;
        
        //raycast to player
        if (PlayerInMoveRange(distanceFromPlayer) && !knockedDown)
        {
            //Debug.Log(distanceFromPlayer);
            //if hit player, move towards player
            //rotate towards player as well
            MoveToPlayer();
            
            if(rotate)
                Rotate();
        }

        Gravity();
        
        Move();
        
        //AdditionaMovementCooldown();
    }

    private void FixedUpdate()
    {
        AdditionaMovementCooldown();
    }

    public bool PlayerInMoveRange(float distance)
    {
        //Debug.Log(directionTowardsPlayer);
        Ray ray = new Ray(transform.position + Vector3.up, directionTowardsPlayer);
        
        //Debug.DrawRay(transform.position + Vector3.up, directionTowardsPlayer, Color.red);
        
        return !Physics.Raycast(ray, distance, playerInRangeLayers);
    }

    public bool PlayerInAttackRange(float distance)
    {
        Ray ray = new Ray(transform.position + Vector3.up, directionTowardsPlayer);
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

    public void MoveToPlayer()
    {
        if(move && !InStoppingDistance())
            moveVector += directionTowardsPlayer.normalized * moveSpeed;
    }

    private void Gravity()
    {
        if (!cc.isGrounded)
        {
            moveVector.y = -10f;
        }
        else
        {
            moveVector.y = -1f;
        }
    }
    
    public void Move()
    {
        moveVector += additionalMovement;
        //Debug.Log(moveVector);
        //transform.position = new Vector3(transform.position.x, 0, transform.position.z);
        cc.Move(moveVector * Time.deltaTime);
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
        //Debug.Log("pushing enemy " + direction);
        additionalMovement += direction;
        StartCoroutine(KnockbackCoolDown());
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

    private IEnumerator KnockbackCoolDown()
    {
        knockedDown = true;
        float timer = knockoutTime;
        while (timer > 0)
        {
            timer -= Time.deltaTime;
            yield return null;
        }

        knockedDown = false;
    }

    private void OnDestroy()
    {
        //Debug.Log("enemy destroyed");
    }
}
