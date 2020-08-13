using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class NoteMaker : MonoBehaviour
{
    GameObject newNote;
    GameObject hot;
    GameObject[] music;
    bool[] pressed;
    public GameObject notes;
    float time = 0;
    float x;
    public float beatTempo;
    int score;
    int counter;
    int clicked = 0;
    public Text results;
    public Text count;
    public Text songScore;
    public Text curCombo;
    public Text curRating;
    float timer=0;
    int i = 0;
    int k = 0;
    int found = 0;
    int counted = 0;
    List<Beat> rhythm;
    private AKASceneManager akaSceneManager;

    int scoreScale;
    int rawScore;
    int maxScore;
    int combo;
    int highestCombo;
    int perfect;
    int good;
    int bad;
    int miss;
    string lastRating;


    private AudioManager AM;
    public AudioClip audio;



    void Start()
    {
        akaSceneManager = GameObject.FindObjectOfType<AKASceneManager>();
        AM = FindObjectOfType<AudioManager>();

        music = new GameObject[200];
        pressed = new bool[200];
        for (int i=0; i<200; i++)
		{
            pressed[i] = false;
		}
        initScoring(50);

        Songs S = new Songs();
        List<Song> songs = S.GetSongs();
        foreach (Song s in songs)
        {
            Debug.Log("Song Name: " + s.GetName());
        }

        Song song = songs[akaSceneManager.curSong];
        Debug.Log("Here : " + song.GetName());
       
        rhythm = song.GetRhythm(akaSceneManager.curDifficulty);

        if(song.GetName()== "Bach suit No1") {
            AM.playMusic(audio);

        }


        makeNotes();
        time = 0;
        beatTempo = beatTempo / 60f;
        newNote.transform.position -= new Vector3(0f, beatTempo * Time.deltaTime, 0f);

        
    }

    void Update()
    {
        

        float hitTime = this.rhythm[i].hit_time;
        // Debug.Log("time: " + rhythm[i].hit_time);
        time = time + Time.deltaTime;
        if (time > hitTime)
        {
            makeNotes();
            time = 0;
            beatTempo = beatTempo / 60f;
            newNote.transform.position -= new Vector3(0f, beatTempo * Time.deltaTime, 0f);

        }

        if (Input.GetMouseButtonDown(0))
        {
            clicked = 1;
            for (int j=0; j<k; j++)
			{
                if (( -4 < music[j].transform.position.y)&&(music[j].transform.position.y < -2.4)&& (counted ==0))
				{


                    if ((Input.mousePosition.x > Screen.width * 0.7f) && (music[j].transform.position.x > 5))
                    {
                        score = score + 100;
                        results.text = "Score: " + score;
                        counter++;
                        Debug.Log("Score: " + score);
                        counted = 1;
                        if (music[j].transform.position.y > -2.9)
                            perfectPress();
                        else if ((music[j].transform.position.y < -3) && (music[j].transform.position.y > -3.5))
                            goodPress();
                        else if ((music[j].transform.position.y < -3.5) && (music[j].transform.position.y > -3.8))
                            badPress();
                        else 
                            missPress();
                        pressed[j] = true;

                    }
                    if ((Input.mousePosition.x < Screen.width * 0.2f) && (music[j].transform.position.x < -1))
                    {
                        score = score + 100;
                        results.text = "Score: " + score;
                        counter++;
                        Debug.Log("Score: " + score);
                        counted = 1;
                        if (music[j].transform.position.y > -2.9)
                            perfectPress();
                        else if ((music[j].transform.position.y < -3) && (music[j].transform.position.y > -3.5))
                            goodPress();
                        else if ((music[j].transform.position.y < -3.5) && (music[j].transform.position.y > -3.8))
                            badPress();
                        else 
                            missPress();
                        pressed[j] = true;
                    }
                    if ((Input.mousePosition.x >= Screen.width * 0.4f) && (Input.mousePosition.x < Screen.width * 0.6f) && (music[j].transform.position.x >= 0) && (music[j].transform.position.x < 2))
                    {
                        score = score + 100;
                        results.text = "Score: " + score;
                        counter++;
                        Debug.Log("Score: " + score);
                        counted = 1;
                        if (music[j].transform.position.y > -2.9)
                            perfectPress();
                        else if ((music[j].transform.position.y < -3) && (music[j].transform.position.y > -3.5))
                            goodPress();
                        else if ((music[j].transform.position.y < -3.5) && (music[j].transform.position.y > -3.8))
                            badPress();
                        else 
                            missPress();
                        pressed[j] = true;

                    }


                }

            }

        }
        for (int j = 0; j < k; j++)
		{
            if((pressed[j] == false)&& (-4.5 > music[j].transform.position.y))
			{
                missPress();
                pressed[j] = true;
               // Debug.Log("The End");

            }

        }
        if(pressed[3]==true)
		{
            akaSceneManager.endGame(score, highestCombo, perfect, good, bad, miss);
        }
        //else
          //  Debug.Log("The End" + pressed[10]);


    }
    public void makeNotes()
    {
        time = 0;
        int rand = Random.Range(1, 4);
        if(rand == 1)
		{
            x = -6;
		}
        else if(rand == 2)
		{
            x = 0;
		}
		else
		{
            x = 6;
		}

        newNote = Instantiate(notes) as GameObject;
        newNote.transform.position = new Vector3(x, 4f, 0f);
        newNote.transform.localScale = new Vector3(6f, 6f, 0f);
        i++;
        timer = timer + Time.deltaTime;
        music[k] = newNote;
        k++;
        counted = 0;
        clicked = 0;
       

    }

    void initScoring(int numNotes)
    {
        maxScore = 200 * numNotes + 2 * ((1 + numNotes) * numNotes / 2);

    }


    public void perfectPress()
    {
        perfect++;
        combo++;
        rawScore += 200 + 2 * combo;
        lastRating = "Perfect";
        updateScore();
    }

    public void goodPress()
    {
        good++;
        combo++;
        rawScore += 100 + 1 * combo;
        lastRating = "Good";
        updateScore();
    }

    public void badPress()
    {
        bad++;
        combo = 0;
        lastRating = "Bad";
        updateScore();
    }

    public void missPress()
    {
        miss++;
        combo = 0;
        lastRating = "Miss";
        updateScore();
    }

    void updateScore()
    {
        score = (int)((float)rawScore / (float)maxScore * 1000000);
        songScore.text = "Score: " + score;
        curCombo.text = "Combo: " + combo;
        curRating.text = "Rating: " + lastRating;
        if (combo > highestCombo)
            highestCombo = combo;
        clicked = 2;
    }

}