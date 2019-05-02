using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

[ExecuteInEditMode]
public class HallwayCrawler : MonoBehaviour
{
    public GameObject floorObject;
    public Transform startPoint;
    public Transform endPoint;
    public float stepDistance = 6;
    public Transform hallwayParent;

    [Range(0, 1)] public float hallFuzz = 0.5f;
    
    private float rand;
    private Transform currentLocation;
    private int loopAmount = 0;
    [SerializeField]
    private List<GameObject> currentRooms;
    
    private void Update()
    {
        startPoint.position = SnapVector3(startPoint.position, stepDistance);
    }

    public IEnumerator Crawl()
    {
        //Debug.Log("Starting Crawl");
        
        currentLocation = startPoint;
        PlaceRoom(currentLocation.position);

        loopAmount = ((int)Vector3.Distance(currentLocation.position, endPoint.position) / 6);

        while(Vector3.Distance(endPoint.position, currentLocation.position) > stepDistance)
        {
            if (loopAmount <= 0)
                break;
            
            //get random value
            rand = Random.Range(0f, 1f);

            //use random value to determine where to place floor
            Vector3 moveDir = GetDirection(rand);
            Debug.Log(moveDir);
            Vector3 newPos = currentLocation.position + (moveDir * stepDistance);

            //do collision check to make sure nothing's in the way
            PlaceRoom(newPos);
            
            yield return new WaitForFixedUpdate();
        }
        
        //get random value
        rand = Random.Range(0f, 1f);

        //use random value to determine where to place floor
        Vector3 moveDire = GetDirection(rand);
//            Debug.Log(moveDir);
        Vector3 newPosi = currentLocation.position + (moveDire * stepDistance);
        
        PlaceRoom(newPosi);
    }

    private void PlaceRoom(Vector3 newPos)
    {
        Collider[] colliders = Physics.OverlapBox(newPos, (Vector3.one * (stepDistance / 2)) - new Vector3(.1f, .1f, .1f));
        if (colliders.Length <= 0)
        {
            //placeFloor
            GameObject newFloor = Instantiate(floorObject, newPos, Quaternion.identity, hallwayParent);
            currentRooms.Add(newFloor);
            //set currentLocation to new piece
            currentLocation = newFloor.transform;
        }
        else
        {
            //if failed to find new spot, decrese loop timer
            loopAmount--;
        }
    }

    private Vector3 GetDirection(float randNum)
    {
        Vector3 direction = endPoint.position - currentLocation.position;
        direction = direction.normalized;

        float randAdder = Random.Range(-hallFuzz, hallFuzz);
        
        float slope = direction.z / direction.x;
        float angle = Mathf.Atan(slope) * Mathf.Rad2Deg;
        float normalizedAngle = angle / 90;
        
        //Debug.Log("Direction " + direction);
        //Debug.Log("normalizedAngle " + normalizedAngle);

        if(randNum + randAdder < Mathf.Abs(normalizedAngle))
        {
            if (direction.z > 0)
                return Vector3.forward;
            
            return -Vector3.forward;
                
        }
        else
        {
            if (direction.x > 0)
                return Vector3.right;
            
            return -Vector3.right;
        }
    }

    private float SnapFloat(float value, float step)
    {
        var newValue = value / step;
        newValue = Mathf.Round(newValue);
        newValue *= step;
        
//        Debug.Log("Old value: " + step);
//        Debug.Log("New value: " + newValue);
        
        return newValue;
    }

    private Vector3 SnapVector3(Vector3 vector, float step)
    {
        var newValue = Vector3.zero;
        newValue.x = SnapFloat(vector.x, step);
        newValue.y = SnapFloat(vector.y, step);
        newValue.z = SnapFloat(vector.z, step);

        return newValue;
    }
}

#if UNITY_EDITOR
[CustomEditor (typeof(HallwayCrawler))]
public class HallwayCrawlerEditor : Editor {
    public override void OnInspectorGUI () {
        HallwayCrawler training = (HallwayCrawler)target;
        if (Application.isPlaying)
        {
            if(GUILayout.Button("Crawl!"))
            {
                training.StartCoroutine(training.Crawl());
            }
        }

        DrawDefaultInspector ();
    }
}
#endif
