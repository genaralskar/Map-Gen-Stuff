using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Health))]
public class PlayerDeath : MonoBehaviour
{
    private Health health;
    private bool dead = false;

    public Animator artAnimator;
    public Animator cameraAnimator;
    public Scene_Manager sceneManager;
    public GameObject deathScreen;
    
    private void Awake()
    {
        health = GetComponent<Health>();
        health.Death += OnDeathHandler;
    }

    private void OnDeathHandler()
    {
        if (dead) return;

        dead = true;
        
        //play animation
        artAnimator.SetTrigger("Death");
        cameraAnimator.SetTrigger("Death");
        
        //turn on death screen
        deathScreen.gameObject.SetActive(true);
        
        //change scene back to intro scene
        sceneManager.ChangeScene(0);
    }
}
