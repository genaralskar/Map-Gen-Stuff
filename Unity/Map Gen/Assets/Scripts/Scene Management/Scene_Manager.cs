using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Scene_Manager : MonoBehaviour
{
    public Image fadeImage;
    public float delay = 1f;
    public float fadeTime = 2f;
    
    public void ChangeScene(int newScene)
    {
        StopAllCoroutines();
        if (delay <= 0)
        {
            if (fadeTime > 0)
            {
                StartCoroutine(Fade(newScene));
            }
            else
            {
                SetScene(newScene);
            }
        }
        else
        {
            StartCoroutine(Delay(newScene));
        }
    }

    private IEnumerator Delay(int newScene)
    {
        yield return new WaitForSeconds(delay);

        if (fadeTime > 0)
        {
            StartCoroutine(Fade(newScene));
        }
        else
        {
            SetScene(newScene);
        }
    }

    private IEnumerator Fade(int newScene)
    {
        float startTime = fadeTime;
        float timer = startTime;
        while (timer > 0)
        {
            timer -= Time.deltaTime;
            
            Color tempColor = fadeImage.color;
            tempColor.a = 1 - (timer / startTime);
            
            //Debug.Log("Fade value = " + tempColor.a);
            
            fadeImage.color = tempColor;
            yield return null;
        }
        SetScene(newScene);
    }

    private void SetScene(int newScene)
    {
        SceneManager.LoadScene(newScene);
    }
}
