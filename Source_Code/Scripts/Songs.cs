using System.Collections;
using Mono.Data.Sqlite;
using System.Data;
using System.Collections.Generic;
using UnityEngine;

public class Songs
{
	public List<Song> list;

    // Start is called before the first frame update
    public Songs()
    {

    	/*
    		Connect to the database and store the number of songs in _num;
    	*/
			DBSetup db = new DBSetup();

			// Connect to Database
			string connection = "URI=file:" + db.getLocation();

			IDbConnection dbcon = new SqliteConnection(connection);
			dbcon.Open();

			// Create SELECT Statement
			IDbCommand dbcmd;
			IDataReader reader;
			dbcmd = dbcon.CreateCommand();
			string select = "SELECT id From songs;";
			dbcmd.CommandText = select;

			// Run Query
			reader = dbcmd.ExecuteReader();

			list = new List<Song>();

			while (reader.Read())
			{
				list.Add(new Song(reader.GetInt32(0) - 1));
			}
			reader.Dispose();
			dbcon.Dispose();

    }

		public List<Song> GetSongs(){
			return list;
		}

		public void PrintSongs() {
			foreach (Song song in list)
			{
				Debug.Log(song.GetName());
			}
		}

    // Update is called once per frame
    void Update()
    {

    }
}
