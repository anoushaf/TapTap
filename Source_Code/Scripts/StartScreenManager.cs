using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartScreenManager : MonoBehaviour
{
    int counter;
    private AKASceneManager akaSceneManager;
    // Start is called before the first frame update
    void Start()
    {
        akaSceneManager = GameObject.FindObjectOfType<AKASceneManager>();
        counter = 0;
    }

    // Update is called once per frame
    void Update()
    {
        counter++;
        if (counter == 600)
        {
            akaSceneManager.moveToSongSelect();
        }
    }
}
