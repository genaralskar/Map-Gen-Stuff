using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]
public class PlayerController : MonoBehaviour
{
    public static Transform playerTransform;
    
    public MoveCamera moveCam;
    public Transform cameraFollowPoint;

    public float speed = 5f;
    public float sprintMod = 1.5f;
    public string sprintInput = "Sprint";
    public float jumpPower = 5f;
    public float lookSensitivity = 50f;
    public bool invertY = false;

    private CharacterController cc;

    private Vector2 mouseXY;
    private Vector3 moveDirection;
    private bool isSprinting = false;

    private void Awake()
    {
        playerTransform = transform;
    }

    // Start is called before the first frame update
    void Start()
    {
        cc = GetComponent<CharacterController>();
        Cursor.lockState = CursorLockMode.Locked;
        
    }

    // Update is called once per frame
    void Update()
    {
        GetInputs();
        RotateCamera();
        MovePlayer();
    }

    void LateUpdate()
    {
        moveCam.MovePosition(cameraFollowPoint);
    }

    
    private void GetInputs()
    {
        mouseXY = Vector2.zero;
        mouseXY.x = Input.GetAxis("Mouse X");
        mouseXY.y = -Input.GetAxis("Mouse Y");
        if (invertY)
            mouseXY.y *= -1;
        
        moveDirection = Vector3.zero;
        moveDirection.x = Input.GetAxis("Horizontal");
        moveDirection.z = Input.GetAxis("Vertical");

        moveDirection = transform.TransformDirection(moveDirection);

        isSprinting = Input.GetButton(sprintInput);
    }
    
    private void RotateCamera()
    {
        Vector3 rot;
        //rotate player left and right
        rot = transform.rotation.eulerAngles;
        rot.y += mouseXY.x * lookSensitivity * Time.deltaTime;
        transform.rotation = Quaternion.Euler(rot);

        //rotate camera up and down
        rot = Vector3.zero;
        Quaternion camearaRot = cameraFollowPoint.localRotation;
        
        //rot.x = cameraFollowPoint.rotation.eulerAngles.x;
        
        camearaRot *= Quaternion.Euler(mouseXY.y * lookSensitivity * Time.deltaTime, 0, 0);
        
       // rot.x += mouseXY.y * lookSensitivity * Time.deltaTime;
        
        Quaternion quatRot = Quaternion.Euler(mouseXY.y * lookSensitivity * Time.deltaTime, 0, 0);

        camearaRot = ClampRotationAroundXAxis(camearaRot);
        //rot.x = Mathf.Clamp(rot.x, -90, 90);
        
        
        cameraFollowPoint.localRotation = camearaRot;
    }

    private void MovePlayer()
    {
        Vector3 moveDir = moveDirection * speed * Time.deltaTime;
        if (isSprinting)
            moveDir *= sprintMod;
        
        cc.Move(moveDir);
    }
    
    
    
    private Quaternion ClampRotationAroundXAxis(Quaternion q)
    {
        q.x /= q.w;
        q.y /= q.w;
        q.z /= q.w;
        q.w = 1.0f;

        float angleX = 2.0f * Mathf.Rad2Deg * Mathf.Atan (q.x);

        angleX = Mathf.Clamp (angleX, -90, 90);

        q.x = Mathf.Tan (0.5f * Mathf.Deg2Rad * angleX);

        return q;
    }
}
