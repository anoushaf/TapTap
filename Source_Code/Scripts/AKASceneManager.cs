using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

/*
 * To use this script properly:
 * 
 * Ensure this script is assigned to an object in the first screen you start the game with, 
 * preferably one with no physical representation, as the object will be persisting throughout all scenes
 * 
 * Copy the following line into the list of global variables for the script you want to reference this with:
 * 
 * private AKASceneManager akaSceneManager;
 * 
 * 
 * Copy the following line into the Start() for the script:
 * 
 * akaSceneManager = GameObject.FindObjectOfType<AKASceneManager>();
 * 
 * 
 * Now you can call whichever methods from this script as you normally would
 * 
 */


public class AKASceneManager : MonoBehaviour
{

    public int curSong;
    public int curDifficulty;

    public int songScore;
    public int songCombo;
    public int songPerfect;
    public int songGood;
    public int songBad;
    public int songMiss;

    public void Start()
    {
        DontDestroyOnLoad(this);
    }

    public void startStartScreen()
    {
    }

    public void moveToSongSelect()
    {
        SceneManager.LoadScene("Song Selection Screen", LoadSceneMode.Single);
        SceneManager.UnloadSceneAsync("Start Screen");
    }

    public void initGame(int song, int difficulty)
    {
        curSong = song;
        curDifficulty = difficulty;
        SceneManager.LoadScene("Game", LoadSceneMode.Single);
        SceneManager.UnloadSceneAsync("Song Selection Screen");
    }

    public int[] getSongData()
    {
        int[] songData = { curSong, curDifficulty };
        return (songData);
    }

    public void startGame()
    {
        SceneManager.LoadScene("Game", LoadSceneMode.Single);
        SceneManager.UnloadSceneAsync("Loading Screen");
    }

    public void endGame(int score, int combo, int perfect, int good, int bad, int miss)
    {
        songScore = score;
        songCombo = combo;
        songPerfect = perfect;
        songGood = good;
        songBad = bad;
        songMiss = miss;
        SceneManager.LoadScene("End Screen", LoadSceneMode.Single);
        SceneManager.UnloadSceneAsync("Game");
    }

    public int[] getSongPerformance()
    {
        int[] songData = { curSong, curDifficulty, songScore, songCombo, songPerfect, songGood, songBad, songMiss };
        return (songData);
    }

    public void exitEndScreen()
    {
        SceneManager.LoadScene("Song Selection Screen", LoadSceneMode.Single);
        SceneManager.UnloadSceneAsync("End Screen");
    }

    public void restartGame()
    {
        SceneManager.LoadScene("Game", LoadSceneMode.Single);
        SceneManager.UnloadSceneAsync("End Screen");
    }


}
