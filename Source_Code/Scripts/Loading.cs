using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Loading : MonoBehaviour
{
    public GameObject loadBG;
    private int count = 0;
    Text sign;

    // Start is called before the first frame update
    void Start()
    {
      sign = loadBG.GetComponent<Text>();
      InvokeRepeating("changeText", 0f, 0.5f);
    }

    void changeText() {

      count = (count + 1) % 3;

      if (count == 0) {
        sign.text = "Loading.";
      }else if (count == 1) {
        sign.text = "Loading. .";
      } else {
        sign.text = "Loading. . .";
      }
    }

    // Update is called once per frame
    void Update()
    {
    }
}
