#!/usr/bin/env bash
echo "How many?"
read MAX
echo "Do you want to hide multiples of 3? (y/n)"
read NO3
echo "Okay, now wait."
python collatzTo1.py $MAX $NO3
dot -Tpng collatzTo1-"$MAX".gv -o collatzTo1-"$MAX".png
echo "DOT representation written in"
echo "./collatzTo1-"$MAX".gv"
echo "PNG picture written in " 
echo "./collatzTo1-"$MAX".png"
