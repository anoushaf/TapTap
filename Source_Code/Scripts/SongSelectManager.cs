using Mono.Data.Sqlite;
using System.Data;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class SongSelectManager : MonoBehaviour
{

    private AKASceneManager akaSceneManager;

    int curSong = 0;
    int curPos = 0;
    int numSongs;
    string[][] songlist = new string[][]
        {
            new string[] {"Song1", "100000", "highscore112", "highscore113", "highscore114", "highscore115", "highscore116", "highscore117", "highscore118", "highscore119", "highscore110",
                                                "200000", "highscore122", "highscore123", "highscore124", "highscore125", "highscore126", "highscore127", "highscore128", "highscore129"," highscore120"},
            new string[] {"Song2", "300000", "highscore212", "highscore213", "highscore214", "highscore215", "highscore216", "highscore217", "highscore218", "highscore219", "highscore210",
                                                "400000", "highscore222", "highscore223", "highscore224", "highscore225", "highscore226", "highscore227", "highscore228", "highscore229"," highscore220"}
        };

    UnityEngine.UI.Button songTitleButton;
    UnityEngine.UI.Button highScorePanel;
    UnityEngine.UI.Text easyTopScore;
    UnityEngine.UI.Text hardTopScore;
    UnityEngine.UI.Text easyScore1;
    UnityEngine.UI.Text easyScore2;
    UnityEngine.UI.Text easyScore3;
    UnityEngine.UI.Text easyScore4;
    UnityEngine.UI.Text easyScore5;
    UnityEngine.UI.Text easyScore6;
    UnityEngine.UI.Text easyScore7;
    UnityEngine.UI.Text easyScore8;
    UnityEngine.UI.Text easyScore9;
    UnityEngine.UI.Text easyScore10;
    UnityEngine.UI.Text hardScore1;
    UnityEngine.UI.Text hardScore2;
    UnityEngine.UI.Text hardScore3;
    UnityEngine.UI.Text hardScore4;
    UnityEngine.UI.Text hardScore5;
    UnityEngine.UI.Text hardScore6;
    UnityEngine.UI.Text hardScore7;
    UnityEngine.UI.Text hardScore8;
    UnityEngine.UI.Text hardScore9;
    UnityEngine.UI.Text hardScore10;
    Vector3 titleStartPosition;
    Vector3 highScoreStartPosition;
    Vector3 highScoreEndPosition;

    bool highScoreActive = false;
    bool highScoreMovingUp = false;
    bool highScoreMovingDown = false;
    public float smoothTime = 0.3f;
    Vector3 velocity = Vector3.zero;

    // Start is called before the first frame update
    void Start()
    {
        akaSceneManager = GameObject.FindObjectOfType<AKASceneManager>();

        songTitleButton = GameObject.Find("Song Title Button").GetComponent<UnityEngine.UI.Button>();
        highScorePanel = GameObject.Find("HighScorePanel").GetComponent<UnityEngine.UI.Button>();
        easyTopScore = GameObject.Find("Easy Score").GetComponent<UnityEngine.UI.Text>();
        hardTopScore = GameObject.Find("Hard Score").GetComponent<UnityEngine.UI.Text>();
        easyScore1 = GameObject.Find("EasyScore1").GetComponent<UnityEngine.UI.Text>();
        easyScore2 = GameObject.Find("EasyScore2").GetComponent<UnityEngine.UI.Text>();
        easyScore3 = GameObject.Find("EasyScore3").GetComponent<UnityEngine.UI.Text>();
        easyScore4 = GameObject.Find("EasyScore4").GetComponent<UnityEngine.UI.Text>();
        easyScore5 = GameObject.Find("EasyScore5").GetComponent<UnityEngine.UI.Text>();
        easyScore6 = GameObject.Find("EasyScore6").GetComponent<UnityEngine.UI.Text>();
        easyScore7 = GameObject.Find("EasyScore7").GetComponent<UnityEngine.UI.Text>();
        easyScore8 = GameObject.Find("EasyScore8").GetComponent<UnityEngine.UI.Text>();
        easyScore9 = GameObject.Find("EasyScore9").GetComponent<UnityEngine.UI.Text>();
        easyScore10 = GameObject.Find("EasyScore10").GetComponent<UnityEngine.UI.Text>();
        hardScore1 = GameObject.Find("HardScore1").GetComponent<UnityEngine.UI.Text>();
        hardScore2 = GameObject.Find("HardScore2").GetComponent<UnityEngine.UI.Text>();
        hardScore3 = GameObject.Find("HardScore3").GetComponent<UnityEngine.UI.Text>();
        hardScore4 = GameObject.Find("HardScore4").GetComponent<UnityEngine.UI.Text>();
        hardScore5 = GameObject.Find("HardScore5").GetComponent<UnityEngine.UI.Text>();
        hardScore6 = GameObject.Find("HardScore6").GetComponent<UnityEngine.UI.Text>();
        hardScore7 = GameObject.Find("HardScore7").GetComponent<UnityEngine.UI.Text>();
        hardScore8 = GameObject.Find("HardScore8").GetComponent<UnityEngine.UI.Text>();
        hardScore9 = GameObject.Find("HardScore9").GetComponent<UnityEngine.UI.Text>();
        hardScore10 = GameObject.Find("HardScore10").GetComponent<UnityEngine.UI.Text>();

        populateSongs();




        titleStartPosition = songTitleButton.transform.position;
        highScoreStartPosition = highScorePanel.transform.position;
        highScoreEndPosition = highScoreStartPosition + new Vector3(0, 800, 0);
        displaySong(curSong);
    }

    void populateSongs()
    {
        // Create a Songs object
        Songs S = new Songs();

        // Retrieve all songs from the database
        List<Song> songs = S.GetSongs();
        // Loop through all the songs

        numSongs = 0;
        foreach (Song s in songs)
        {
            Debug.Log("Song Name: " + s.GetName());
            songlist[numSongs][0] = s.GetName();
            songlist[numSongs][1] = s.GetLength().ToString();
            List<Rank> easyScores = s.GetTen(0);
            List<Rank> hardScores = s.GetTen(1);
            string score;
            for (int i = 0; i < 10; i++)
            {
                if (i < easyScores.Count) {
                    score = easyScores[i].score.ToString();
                    songlist[numSongs][i+1] = easyScores[i].name + ": " + score;
                } else
                {
                    songlist[numSongs][i + 1] = "";
                }
            }
            for (int i = 0; i < 10; i++)
            {
                if (i < hardScores.Count)
                {
                    score = hardScores[i].score.ToString();
                    songlist[numSongs][i + 11] = hardScores[i].name + ": " + score;
                }
                else
                {
                    songlist[numSongs][i + 11] = "";
                }
            }
            numSongs++;
        }

    }

    // Update is called once per frame
    void Update()
    {
        if (highScoreMovingUp)
        {
            if (curPos >= 210)
            {
                highScoreMovingUp = false;
            }
            else
            {
                highScorePanel.transform.position += new Vector3(0, 3, 0);
                Debug.Log(highScorePanel.transform.position);
                curPos++;
            }

        }

        if (highScoreMovingDown)
        {
            if (curPos <= 0)
            {
                highScoreMovingDown = false;
            }
            else
            {
                highScorePanel.transform.position += new Vector3(0, -3, 0);
                Debug.Log(highScorePanel.transform.position);
                curPos--;
            }
        }

    }

    void displaySong(int num)
    {

        songTitleButton.GetComponentInChildren<UnityEngine.UI.Text>().text = songlist[curSong][0];
        easyTopScore.text = songlist[curSong][1];
        hardTopScore.text = songlist[curSong][11];
        easyScore1.text = songlist[curSong][1];
        easyScore2.text = songlist[curSong][2];
        easyScore3.text = songlist[curSong][3];
        easyScore4.text = songlist[curSong][4];
        easyScore5.text = songlist[curSong][5];
        easyScore6.text = songlist[curSong][6];
        easyScore7.text = songlist[curSong][7];
        easyScore8.text = songlist[curSong][8];
        easyScore9.text = songlist[curSong][9];
        easyScore10.text = songlist[curSong][10];
        hardScore1.text = songlist[curSong][11];
        hardScore2.text = songlist[curSong][12];
        hardScore3.text = songlist[curSong][13];
        hardScore4.text = songlist[curSong][14];
        hardScore5.text = songlist[curSong][15];
        hardScore6.text = songlist[curSong][16];
        hardScore7.text = songlist[curSong][17];
        hardScore8.text = songlist[curSong][18];
        hardScore9.text = songlist[curSong][19];
        hardScore10.text = songlist[curSong][20];

        Debug.Log("Song changed, the current song is " + (curSong+1));
    }

    public void prevSong()
    {
        curSong--;
        if (curSong < 0)
            curSong = numSongs - 1;
        displaySong(curSong);

    }

    public void nextSong()
    {
        curSong++;
        if (curSong == numSongs)
            curSong = 0;
        displaySong(curSong);
    }

    public void toggleHighScores()
    {
        if (!highScoreActive)
        {
            highScoreActive = true;
            highScoreMovingUp = true;
            highScoreMovingDown = false;
        } else
        {
            highScoreActive = false;
            highScoreMovingUp = false;
            highScoreMovingDown = true;
        }
    }


    public void startEasySong()
    {
        Debug.Log("The button to start the song on Easy has been pressed");
        //Will start game on easy
        akaSceneManager.initGame(curSong, 0);
    }

    public void startHardSong()
    {
        Debug.Log("The button to start the song on Hard has been pressed");
        //Will start game on hard

        akaSceneManager.initGame(curSong, 1);
    }
}
