using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OpenDoorTest : MonoBehaviour
{
    public Animator anims;

    private void OnMouseDown()
    {
        anims.SetTrigger("Open Door");
    }
}
