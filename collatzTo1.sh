#!/usr/bin/env bash
echo "How many?"
read MAX
python collatzTo1.py $MAX
dot -Tpng collatzTo1-"$MAX".gv -o collatzTo1-"$MAX".png
Open collatzTo1-"$MAX".png
