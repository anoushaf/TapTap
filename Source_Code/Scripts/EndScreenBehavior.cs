using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EndScreenBehavior : MonoBehaviour
{
    public Button exitButton;
    public Button restartButton;
    private AKASceneManager akaSceneManager;

    public Text perfect;
    public Text good;
    public Text bad;
    public Text missed;
    public Text total;
    public Text title;
    public Text difficulty;
    public Text topTenList;
    public Text topTenTitle;
    public GameObject topTen;
    public Button submitTen;
    public InputField input;
    public Text tenScore;
    Song cur_song;



    // Start is called before the first frame update
    void Start()
    {
        akaSceneManager = GameObject.FindObjectOfType<AKASceneManager>();

        exitButton.onClick.AddListener(ExitGame);
        restartButton.onClick.AddListener(RestartGame);
        submitTen.onClick.AddListener(AddTen);

        perfect.text = "Perfect: " + akaSceneManager.songPerfect.ToString();
        good.text = "Good: " + akaSceneManager.songGood.ToString();
        bad.text = "Bad: " + akaSceneManager.songBad.ToString();
        missed.text = "Missed: " + akaSceneManager.songMiss.ToString();
        total.text = "Total Score: " + akaSceneManager.songScore.ToString();

        cur_song = new Song(akaSceneManager.curSong);
        Debug.Log("End Screen: Current song is " + akaSceneManager.curSong);
        title.text = cur_song.GetName();
        // Debug.Log(akaSceneManager.curSong);
        // Debug.Log(cur_song.GetName());


        updateTen();

        if (!cur_song.InTop(akaSceneManager.songScore, akaSceneManager.curDifficulty)) {
          Destroy(topTen);
        } else {
          tenScore.text = "Score: " + akaSceneManager.songScore.ToString();
        }

        if (akaSceneManager.curDifficulty == 0) {
          difficulty.text = "Easy";
        } else {
          difficulty.text = "Hard";
        }
    }

    // Update is called once per frame
    void Update()
    {

    }

    void updateTen()
    {
      List<Rank> tenList = cur_song.GetTen(akaSceneManager.curDifficulty);
      topTenList.text = "";
      // int rank = 1;
      tenList.Sort((x, y) => {
          if (x.score > y.score) {
            return -1;
          }
          return 1;
        });
      int rank = 1;
      foreach (Rank r in tenList)
      {
        topTenList.text += rank.ToString() + ". " + r.name + "\t\t" + r.score.ToString() + "\n";
        rank += 1;
      }
    }

    void AddTen()
    {
      string name = input.text;
      if (name == "")
      {
        name = "N\\A";
      }
      cur_song.AddTop(akaSceneManager.songScore, name, akaSceneManager.curDifficulty);
      updateTen();
      Destroy(topTen);
    }

    void ExitGame() {
      Destroy(exitButton);
      Destroy(restartButton);
      Destroy(perfect);
      Destroy(good);
      Destroy(bad);
      Destroy(missed);
      Destroy(total);
      Destroy(title);
      Destroy(difficulty);
      Destroy(topTenList);
      Destroy(submitTen);
      Destroy(input);
      Destroy(tenScore);
      akaSceneManager.exitEndScreen();
      Debug.Log("Will Exit Game");
    }

    void RestartGame() {
      Destroy(exitButton);
      Destroy(restartButton);
      Destroy(perfect);
      Destroy(good);
      Destroy(bad);
      Destroy(missed);
      Destroy(total);
      Destroy(title);
      Destroy(difficulty);
      Destroy(topTenList);
      Destroy(submitTen);
      Destroy(input);
      Destroy(tenScore);
      akaSceneManager.restartGame();
      Debug.Log("Restart Game");
    }


}
