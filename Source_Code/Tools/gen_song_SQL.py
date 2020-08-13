#!/usr/bin/env python3

# This script takes a csv filename as its first parameter and outputs
# SQL queries to insert the song information into the database.

import sys

#Song class stores information on the song and generates Insert queries for the song
class Song:
    def __init__(self):
        self.name = None
        self.location = None
        self.length = None
        self.tempo = None
        self.rhythm = {}
        self.rhythm[0] = []
        self.rhythm[1] = []

    #Store button rhythm patterns in an array keyed off by diff
    def addRhythm(self, diff, length, timing):
        if diff == '1':
            # Easy
            self.rhythm[0].append((int(timing), length))

        self.rhythm[1].append((int(timing), length))


        # if diff not in self.rhythm:
        #     self.rhythm[diff] = {}
        #
        # if button not in self.rhythm[diff]:
        #     self.rhythm[diff][button] = []
        #
        # self.rhythm[diff].append((int(beat), int(length)))

    #Returns true if the class has all the information necessary to store in database
    def _validate(self):
        if (not self.name):
            return False
        if (not self.location):
            return False
        if (not self.length):
            return False
        if (not self.tempo):
            return False
        return True

    #Generates all INSERT queries to store information pertaining to this song
    def generateSQL(self):
        if not self._validate():
            eprint("Missing information. Song must have songname, location, length, and tempo")
            exit(-1)

        #INSERT statement to store the song information in the SONGS table
        SQL = f'''
INSERT INTO songs (name, location, length, tempo)
    VALUES (
    \'{self.name}\',
    \'{self.location}\',
    {self.length},
    {self.tempo});
'''

        #INSERT statement to store each difficulty for the song in the SONG_DIFFICULTY table
        for diff in self.rhythm:
            SQL += f'''
INSERT INTO song_difficulty (song_id, difficulty)
    VALUES (
    (SELECT id FROM songs WHERE name = \'{self.name}\'),
    {diff});
'''

            #INSERT statement to store the various rhytm patterns for each difficult and button
            for note in self.rhythm[diff]:
                SQL += f'''
INSERT INTO notes (song_diff_id, hit_time, length)
    VALUES (
    (SELECT id FROM song_difficulty
        WHERE song_id = (SELECT id FROM songs WHERE name = \'{self.name}\') and difficulty = {diff}),
    {note[0]},
    {note[1]});
'''
        return SQL

#Reads in a file and returns a multiline string with INSERT statements to store song information
def create(infile):

    #Make sure we have an input file
    if not infile:
        eprint("Proper use of script is ./gen_song_SQL.py [input_filename] [output_filename]")

    #Read in the csv file
    file = open(infile, "r")
    lines = file.readlines()

    #Create the class to store the information
    song = Song()
    readingButtons = False

    #Loop through the lines to parse through the csv information
    for line in lines:
        line = line.rstrip()

        #Blank line
        if line[0] == ',':
            continue

        #The columns are separated by commas in csv files
        columns = line.split(",")

        #All the rows for the rhythm information comes at the end
        if readingButtons:

            #Rhythm information should be organized as difficulty, button, timing
            if len(columns) != 3:
                file.close()
                eprint("Rhythm is missing difficulty, timing and/or length.")


            song.addRhythm(columns[0], columns[1], columns[2])

        #We are still reading header information
        else:
            if columns[0] == 'Song':
                song.name = columns[1]

            elif columns[0] == 'Location':
                song.location = columns[1]

            elif columns[0] == 'Length':
                song.length = columns[1]

            elif columns[0] == 'Tempo':
                song.tempo = columns[1]

            elif columns[0] == 'Easy':
                readingButtons = True

    #Done using the file
    file.close()

    #Generate all the INSERT statements
    return song.generateSQL()


def eprint(message):
    print(message, file=sys.stderr)
    exit(-1)

if __name__ == "__main__":
    SQL = create(sys.argv[1])
    print(SQL)
