#! /bin/bash

grep -n Human character.txt
#Search the lines that contain the human case insenstive with -i and -n for line numbering in file
grep -i -n human character.txt


grep Turtle character.txt
# Search the lines that doesn't contain the keyword Turtle
grep -v Turtle character.txt

grep -r -i term /path/to/folder
