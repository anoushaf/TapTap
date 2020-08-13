using System.Collections;
using System.Linq;

using Mono.Data.Sqlite;
using System.Data;
using System.Collections.Generic;
using UnityEngine;

public class Rank {
	public int score;
	public string name;
	public int rank;

	public Rank(string n, int s, int r)
	{
		score = s;
		name = n;
		rank = r;
	}
}

public class Beat {
	public int hit_time;
	public float length;
	public Beat(int h, float l) {
		hit_time = h;
		length = l;
	}
}

public class Song
{
	private string _name;
	private string _location;
	private int _length; //length of song in ms
	private int _id;
	private int _tempo;

	private int _easyId;
	private int _hardId;

	public Song(int id)
	{
		_id = id + 1;

		DBSetup db = new DBSetup();

		// Connect to Database
		string connection = "URI=file:" + db.getLocation();
		IDbConnection dbcon = new SqliteConnection(connection);
		dbcon.Open();

		// Create SELECT Statement
		IDbCommand dbcmd;
		IDataReader reader;
		dbcmd = dbcon.CreateCommand();
		string select = "SELECT name, location, length, tempo From songs WHERE id = " + _id + ";";
		dbcmd.CommandText = select;

		// Run Query
		reader = dbcmd.ExecuteReader();

		// Make sure a row was returned
		if (reader.Read()) {

			//Save Data
			_name = reader.GetString(0);
			_location = reader.GetString(1);
			_length = reader.GetInt32(2);
			_tempo = reader.GetInt32(3);
//		Debug.Log(_name + ' ' + _location + ' ' + _length + ' ' + _tempo);

		}
		reader.Close();
		dbcon.Dispose();

		_easyId = _GetDiffId(0);
		_hardId = _GetDiffId(1);

		// string insert = "INSERT into top_ten (song_diff_id, rank, score, name) VALUES (" + _easyId + ", " + 1 + ", " + 20 + ", \"" + "Amy"+ "\");";
		// Debug.Log(insert);
		// dbcmd.CommandText = insert;
		// var result = dbcmd.ExecuteNonQuery();
		// Debug.Log(result);

	}

	public string GetSong()
	{
		return Application.dataPath + _location;
	}

	public int GetLength()
	{
		return _length;
	}

	public string GetName()
	{
		return _name;
	}

	public int GetID() {
		return _id;
	}

	public List<Rank> GetTen(int diff) {
		int id = _easyId;
		if (diff == 1) {
			id = _hardId;
		}

		return _getTen(id);
	}

	public bool InTop(int score, int diff) {
			List <Rank> ten = GetTen(diff);

			int rank = 1;
			while (rank <= 10) {
				if (ten.Count < rank) {
					return true;
				} else {
					if (ten[rank - 1].score < score) {
						return true;
					}
				}
				rank++;
			}
			return false;
	}

	public void AddTop(int score, string name, int diff) {
		List <Rank> topTen = GetTen(diff);
		Rank newRank = new Rank(name, score, 0);

		topTen.Add(newRank);

		List <Rank> newList = topTen.OrderByDescending(o=>o.score).ToList();

		if (newList.Count > 10) {
			newList.RemoveAt(newList.Count - 1);
		}

		int count = 1;
		foreach (Rank r in newList)
		{
			r.rank = count;
			count += 1;
		}

		// List <Rank> newList = new List<Rank>();
		int id = _GetDiffId(diff);

		count = 0;
		int rank = 1;

		DBSetup db = new DBSetup();

		// Connect to Database
		string connection = "URI=file:" + db.getLocation();
		IDbConnection dbcon = new SqliteConnection(connection);
		dbcon.Open();

		// Create SELECT Statement
		IDbCommand dbcmd;

		dbcmd = dbcon.CreateCommand();
		string delete = "DELETE from top_ten where song_diff_id = " + id + ";";
		dbcmd.CommandText = delete;
		dbcmd.ExecuteNonQuery();

		foreach (Rank r in newList)
		{
			string insert = "INSERT into top_ten (song_diff_id, rank, score, name) VALUES (" + id + ", " + r.rank + ", " + r.score + ", \"" + r.name + "\");";

			//Debug.Log(insert);
			dbcmd.CommandText = insert;
			var result = dbcmd.ExecuteNonQuery();
		}

		dbcon.Dispose();
	}

	private int _GetDiffId(int diff) {
		DBSetup db = new DBSetup();

		// Connect to Database
		string connection = "URI=file:" + db.getLocation();

		IDbConnection dbcon = new SqliteConnection(connection);
		dbcon.Open();

		IDbCommand dbcmd;
		dbcmd = dbcon.CreateCommand();
		IDataReader reader;
		string select = "SELECT id FROM song_difficulty WHERE Song_id = " + _id + " and Difficulty = " + diff + ";";

		dbcmd.CommandText = select;
		reader = dbcmd.ExecuteReader();
		int id = -1;
		if (reader.Read()) {
				id = reader.GetInt32(0);
				// Debug.Log(id);
		}
		reader.Close();
		dbcon.Dispose();
		return id;
	}



	private List<Rank> _getTen(int id) {
		List <Rank> ranks = new List<Rank>();
		bool atEnd = false;
		int rank = 1;

		// Connect to Database
		DBSetup db = new DBSetup();

		// Connect to Database
		string connection = "URI=file:" + db.getLocation();

		IDbConnection dbcon = new SqliteConnection(connection);
		dbcon.Open();

		IDbCommand dbcmd;
		dbcmd = dbcon.CreateCommand();

		IDataReader reader;

		while (!atEnd) {

			string select = "SELECT name, score FROM top_ten WHERE song_diff_id = " + id + " and rank = " + rank + ";";
			dbcmd.CommandText = select;

			reader = dbcmd.ExecuteReader();

			if (reader.Read()) {
				Rank r = new Rank(reader.GetString(0), reader.GetInt32(1), rank);
				ranks.Add(r);
				rank++;
				if (rank > 10) {
					atEnd = true;
				}
			}	else {
				atEnd = true;
			}
			reader.Close();
		}
		dbcon.Dispose();
		return ranks;
	}



	public List<Beat> GetRhythm(int diff) {
		DBSetup db = new DBSetup();
		int id = _easyId;

		if (id == 1) {
			id = _hardId;
		}

		// Connect to Database
		string connection = "URI=file:" + db.getLocation();
		IDbConnection dbcon = new SqliteConnection(connection);
		dbcon.Open();

		// Create SELECT Statement
		IDbCommand dbcmd;
		IDataReader reader;
		dbcmd = dbcon.CreateCommand();

		List<Beat> beats = new List<Beat>();
		string select = "SELECT hit_time , length FROM notes WHERE song_diff_id = " + id + ";";
		dbcmd.CommandText = select;

		// Run Query
		reader = dbcmd.ExecuteReader();

		while (reader.Read()) {
			int hit_time = reader.GetInt32(0);
			float length = reader.GetFloat(1);
			Beat b = new Beat(hit_time, length);
			beats.Add(b);
		}

		reader.Dispose();
		dbcon.Dispose();

		return beats;

	}
}
