using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(HurtBox))]
public class HurtBoxSound : MonoBehaviour
{
    public AudioSource source;

    private HurtBox hurtbox;

    private void Awake()
    {
        hurtbox = GetComponent<HurtBox>();
        hurtbox.HurtBoxEnter += HurtBoxEnterHandler;
    }

    private void HurtBoxEnterHandler()
    {
        source.Play();
    }
}
