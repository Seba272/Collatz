#!/usr/bin/env bash
echo "How many?"
read MAX
python prova02.py $MAX
dot -Tpng graph02-"$MAX".gv -o graph02-"$MAX".png
Open graph02-"$MAX".png
