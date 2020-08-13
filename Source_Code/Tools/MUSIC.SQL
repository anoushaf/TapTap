/* MUSIC.SQL
This file sets up the game database with songs.
Read in the SQL file with SQL lite to generate the database and
save the database file within Application.persistentDataPath in
Unity as with the filename "database" to setup databse.
*/

CREATE TABLE IF NOT EXISTS songs
  	(id INTEGER PRIMARY KEY,
  	name STRING,
  	location STRING,
  	length INTEGER,
  	tempo INTEGER);

CREATE TABLE IF NOT EXISTS song_difficulty
  	(id INTEGER PRIMARY KEY,
  	song_id INTEGER,
    difficulty INTEGER,
  	CONSTRAINT fk_song FOREIGN KEY (song_id) REFERENCES songs(id));

CREATE TABLE IF NOT EXISTS notes
  	(id INTEGER PRIMARY KEY,
  	song_diff_id INTEGER,
  	hit_time INTEGER,
    length REAL,
  	CONSTRAINT fk_song_diff FOREIGN KEY (song_diff_id) REFERENCES song_difficulty(id));

CREATE TABLE IF NOT EXISTS top_ten
    (id INTEGER PRIMARY KEY,
    song_diff_id INTEGER,
    rank INTEGER,
    score INTEGER,
    name STRING,
    CONSTRAINT fk_song_diff FOREIGN KEY (song_diff_id) REFERENCES song_difficulty(id));

/*Queries generated from Bach Suite no 1.xlsx - Sheet1.csv*/
    
INSERT INTO songs (name, location, length, tempo)
    VALUES (
    'Bach suit No1',
    '/Music/bach_suite_no1_1',
    292000,
    84);

INSERT INTO song_difficulty (song_id, difficulty)
    VALUES (
    (SELECT id FROM songs WHERE name = 'Bach suit No1'),
    0);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    1,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    3,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    5,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    7,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    9,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    10,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    13,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    14,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    16,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    18,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    20,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    21,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    24,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    25,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    28,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    34,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    36,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    39,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    41,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    44,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    46,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    48,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    49,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    52,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    53,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    57,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    59,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    64,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    66,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    68,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    69,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    71,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    73,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    74,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    75,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    78,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    80,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    82,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    86,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    88,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    90,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    91,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    93,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    95,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    99,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    102,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    103,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    105,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    107,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    108,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    112,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    114,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    116,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    119,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    122,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    124,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    126,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    128,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    130,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    133,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    134,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    137,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    139,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    140,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    142,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    146,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    147,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    149,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    150,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    152,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    154,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    157,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    160,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    163,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    165,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    167,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    169,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    173,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    175,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    177,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    178,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    181,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    183,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    187,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    189,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    191,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    193,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    194,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    198,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    200,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    201,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    203,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    207,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    209,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    212,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 0),
    214,
    4);

INSERT INTO song_difficulty (song_id, difficulty)
    VALUES (
    (SELECT id FROM songs WHERE name = 'Bach suit No1'),
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    1,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    2,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    3,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    4,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    5,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    6,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    7,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    8,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    9,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    10,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    11,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    12,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    13,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    14,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    15,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    16,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    17,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    18,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    19,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    20,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    21,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    22,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    23,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    24,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    25,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    26,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    27,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    28,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    29,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    30,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    31,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    32,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    33,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    34,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    35,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    36,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    37,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    38,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    39,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    40,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    41,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    42,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    43,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    44,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    45,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    46,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    47,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    48,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    49,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    50,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    51,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    52,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    53,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    54,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    55,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    56,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    57,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    58,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    59,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    60,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    61,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    62,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    63,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    64,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    65,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    66,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    67,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    68,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    69,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    70,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    71,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    72,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    73,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    74,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    75,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    76,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    77,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    78,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    79,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    80,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    81,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    82,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    83,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    84,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    85,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    86,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    87,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    88,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    89,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    90,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    91,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    92,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    93,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    94,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    95,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    96,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    97,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    98,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    99,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    100,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    101,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    102,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    103,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    104,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    105,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    106,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    107,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    108,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    109,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    110,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    111,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    112,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    113,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    114,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    115,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    116,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    117,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    118,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    119,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    120,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    121,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    122,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    123,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    124,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    125,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    126,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    127,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    128,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    129,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    130,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    131,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    132,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    133,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    134,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    135,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    136,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    137,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    138,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    139,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    140,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    141,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    142,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    143,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    144,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    145,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    146,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    147,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    148,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    149,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    150,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    151,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    152,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    153,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    154,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    155,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    156,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    157,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    158,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    159,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    160,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    161,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    162,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    163,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    164,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    165,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    166,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    167,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    168,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    169,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    170,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    171,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    172,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    173,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    174,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    175,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    176,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    177,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    178,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    179,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    180,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    181,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    182,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    183,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    184,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    185,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    186,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    187,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    188,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    189,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    190,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    191,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    192,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    193,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    194,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    195,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    196,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    197,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    198,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    199,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    200,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    201,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    202,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    203,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    204,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    205,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    206,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    207,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    208,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    209,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    210,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    211,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    212,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    213,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach suit No1') and difficulty = 1),
    214,
    4);

/*Queries generated from Bach Air.xlsx - Sheet1.csv*/
    
INSERT INTO songs (name, location, length, tempo)
    VALUES (
    'Bach Air',
    '/Music/bach_air',
    292000,
    66);

INSERT INTO song_difficulty (song_id, difficulty)
    VALUES (
    (SELECT id FROM songs WHERE name = 'Bach Air'),
    0);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    1,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    3,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    5,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    7,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    9,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    12,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    14,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    16,
    1.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    18,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    19,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    20,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    23,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    27,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    29,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    31,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    33,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    35,
    3);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    36,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    38,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    39,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    42,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    46,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    51,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    52,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    54,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    55,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    58,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    59,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    60,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    62,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    64,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    66,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    68,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    70,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    72,
    1.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    73,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    74,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    76,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    80,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    81,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    82,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    84,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    86,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    89,
    3);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    90,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    92,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    96,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    99,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    101,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    104,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    105,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    108,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    109,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    110,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    115,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    116,
    3);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    117,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    119,
    1.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    121,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    123,
    2.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    128,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    130,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    132,
    1.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    134,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    136,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    137,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    138,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    140,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    142,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    145,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    146,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    148,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    150,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    151,
    3);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    154,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    156,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    157,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    158,
    1.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    161,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    163,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    165,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    167,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    168,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    170,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    172,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    174,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    175,
    3);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    177,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    178,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    180,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    182,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    183,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    184,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    186,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    188,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    190,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    191,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 0),
    193,
    4);

INSERT INTO song_difficulty (song_id, difficulty)
    VALUES (
    (SELECT id FROM songs WHERE name = 'Bach Air'),
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    1,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    2,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    3,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    4,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    5,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    6,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    7,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    8,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    9,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    10,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    11,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    12,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    13,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    14,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    15,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    16,
    1.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    17,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    18,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    19,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    20,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    21,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    22,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    23,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    24,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    25,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    26,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    27,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    28,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    29,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    30,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    31,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    32,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    33,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    34,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    35,
    3);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    36,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    37,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    38,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    39,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    40,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    41,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    42,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    43,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    44,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    45,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    46,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    47,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    48,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    49,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    50,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    51,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    52,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    53,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    54,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    55,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    56,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    57,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    58,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    59,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    60,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    61,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    62,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    63,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    64,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    65,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    66,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    67,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    68,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    69,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    70,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    71,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    72,
    1.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    73,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    74,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    75,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    76,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    77,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    78,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    79,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    80,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    81,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    82,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    83,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    84,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    85,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    86,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    87,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    88,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    89,
    3);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    90,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    91,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    92,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    93,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    94,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    95,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    96,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    97,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    98,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    99,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    100,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    101,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    102,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    103,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    104,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    105,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    106,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    107,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    108,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    109,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    110,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    111,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    112,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    113,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    114,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    115,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    116,
    3);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    117,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    118,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    119,
    1.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    120,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    121,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    122,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    123,
    2.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    124,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    125,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    126,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    127,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    128,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    129,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    130,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    131,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    132,
    1.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    133,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    134,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    135,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    136,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    137,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    138,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    139,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    140,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    141,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    142,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    143,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    144,
    0.25);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    145,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    146,
    4);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    147,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    148,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    149,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    150,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    151,
    3);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    152,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    153,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    154,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    155,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    156,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    157,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    158,
    1.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    159,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    160,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    161,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    162,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    163,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    164,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    165,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    166,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    167,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    168,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    169,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    170,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    171,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    172,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    173,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    174,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    175,
    3);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    176,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    177,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    178,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    179,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    180,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    181,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    182,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    183,
    2);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    184,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    185,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    186,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    187,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    188,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    189,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    190,
    1);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    191,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    192,
    0.5);

INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = 'Bach Air') and difficulty = 1),
    193,
    4);
