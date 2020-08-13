using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Setup : MonoBehaviour
{
    private AKASceneManager akaSceneManager;

    public Text title;
    public Text subtitle;
    bool hasSwitched;

    // Start is called before the first frame update
    void Start()
    {
        akaSceneManager = GameObject.FindObjectOfType<AKASceneManager>();
        hasSwitched = false;
    }

    // Update is called once per frame
    void Update()
    {
        // Debug.Log(db.isLoaded);
        if ((Input.GetMouseButtonDown(0) || Input.touchCount > 0) && (!hasSwitched))
        {
            hasSwitched = true;

            //Temporary fix to make title and subtitle invisible
            Destroy(title);
            Destroy(subtitle);

            akaSceneManager.moveToSongSelect();

        }
    }
}
