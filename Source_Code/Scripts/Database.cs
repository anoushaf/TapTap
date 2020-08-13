using System.Collections;
using System.IO;
using Mono.Data.Sqlite;
using System.Data;
using System.Collections.Generic;
using UnityEngine;

public class DBSetup {
  public string getLocation() {
    return Application.persistentDataPath + "/" + "database2.0";
  }

  public void clearDB() {
    string[] dbs = {Application.persistentDataPath + "/" + "database"};
    foreach (string db in dbs)
    {
      if (File.Exists(db))
      {
        Debug.Log("Deleting old file: " + db);
        File.Delete(db);
      }
    }
  }
}

public class Database : MonoBehaviour
{
    public bool isLoaded = false;

    // Start is called before the first frame update
    void Start()
    {
        moveDB();
        // test();
    }

    void moveDB() {

      DBSetup db = new DBSetup();
      string connection = db.getLocation();
      db.clearDB();

      string db_file = Application.dataPath + "/StreamingAssets/database";

      //For Mac Builds, the Streaming Assets folder is moved to /Resources/Data
      if (!File.Exists(db_file)) {
        db_file = Application.dataPath + "/Resources/Data/StreamingAssets/database";
      }

      if (!File.Exists(connection)) {
        Debug.Log("Copying database file to " + connection);

        byte[] bytes = System.IO.File.ReadAllBytes(db_file);
        System.IO.File.WriteAllBytes(connection, bytes);

      } else {
        FileInfo fi = new FileInfo(connection);
        FileInfo fo = new FileInfo(db_file);
        if (fi.Length < fo.Length) {
          byte[] bytes = System.IO.File.ReadAllBytes(db_file);
          System.IO.File.WriteAllBytes(connection, bytes);
        }
      }

      Debug.Log("Using " + connection);
      isLoaded = true;
    }

    IEnumerator pause()
    {
        yield return new WaitForSeconds(5);
    }

    void test() {
      Songs S = new Songs();
      List<Song> list = S.GetSongs();
      foreach (Song song in list)
			{
				Debug.Log(song.GetName());

        song.AddTop(10, "Foo", 1);
        song.AddTop(50, "Boo", 1);
        List<Rank> ranks = song.GetTen(1);
        // Debug.Log("foo");

        foreach (Rank r in ranks)
        {
          Debug.Log(r.rank);
          Debug.Log(r.name);
          Debug.Log(r.score);
        }

        List<Beat> beats = song.GetRhythm(2);
        foreach (Beat b in beats)
        {
          Debug.Log(b.hit_time);
          Debug.Log(b.length);
        }
			}

    }


    // Update is called once per frame
    void Update()
    {

    }
}
