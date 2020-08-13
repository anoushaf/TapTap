using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameScreenManager : MonoBehaviour
{
    int song;
    int difficulty;

    int score;
    int combo;
    int highestCombo;
    int perfect;
    int good;
    int bad;
    int miss;

    string lastRating;


    UnityEngine.UI.Button perfectButton;
    UnityEngine.UI.Button goodButton;
    UnityEngine.UI.Button badButton;
    UnityEngine.UI.Button missButton;
    UnityEngine.UI.Text songName;
    UnityEngine.UI.Text songDiff;
    UnityEngine.UI.Text songScore;
    UnityEngine.UI.Text curRating;
    UnityEngine.UI.Text curCombo;

    private AKASceneManager akaSceneManager;
    // Start is called before the first frame update
    void Start()
    {
        akaSceneManager = GameObject.FindObjectOfType<AKASceneManager>();
        int[] songData = akaSceneManager.getSongData();
        song = songData[0];
        difficulty = songData[1];
        score = 0;
        combo = 0;
        perfect = 0;
        good = 0;
        bad = 0;
        miss = 0;


        perfectButton = GameObject.Find("Perfect Button").GetComponent<UnityEngine.UI.Button>();
        goodButton = GameObject.Find("Good Button").GetComponent<UnityEngine.UI.Button>();
        badButton = GameObject.Find("Bad Button").GetComponent<UnityEngine.UI.Button>();
        missButton = GameObject.Find("Miss Button").GetComponent<UnityEngine.UI.Button>();
        songName = GameObject.Find("Name").GetComponent<UnityEngine.UI.Text>();
        songDiff = GameObject.Find("Diff").GetComponent<UnityEngine.UI.Text>();
        songScore = GameObject.Find("Score").GetComponent<UnityEngine.UI.Text>();
        curRating = GameObject.Find("Rating").GetComponent<UnityEngine.UI.Text>();
        curCombo = GameObject.Find("Combo").GetComponent<UnityEngine.UI.Text>();

        songName.text = "Song " + song.ToString();

        if (difficulty == 0)
            songDiff.text = "Easy";
        else if (difficulty == 1)
            songDiff.text = "Hard";
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void perfectPress()
    {
        score += 100;
        perfect++;
        combo++;
        lastRating = "Perfect";
        perfectButton.GetComponentInChildren<UnityEngine.UI.Text>().text = perfect.ToString();
        updateScore();
    }

    public void goodPress()
    {
        score += 50;
        good++;
        combo++;
        lastRating = "Good";
        goodButton.GetComponentInChildren<UnityEngine.UI.Text>().text = good.ToString();
        updateScore();
    }

    public void badPress()
    {
        bad++;
        combo = 0;
        lastRating = "Bad";
        badButton.GetComponentInChildren<UnityEngine.UI.Text>().text = bad.ToString();
        updateScore();
    }

    public void missPress()
    {
        miss++;
        combo = 0;
        lastRating = "Miss";
        missButton.GetComponentInChildren<UnityEngine.UI.Text>().text = miss.ToString();
        updateScore();
    }

    void updateScore()
    {
        songScore.text = score.ToString();
        curCombo.text = combo.ToString();
        curRating.text = lastRating;
        if (combo > highestCombo)
            highestCombo = combo;
    }

    public void endGame()
    {
        akaSceneManager.endGame(score, highestCombo, perfect, good, bad, miss);
    }
}
