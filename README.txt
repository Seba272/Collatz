September 20, 2020, 
	Campo Lomaso, TN, Italia
	Sebastiano Nicolussi Golo
	git@sebang.fastmail.fm

Given a number k, the function is:
	divide k by 2 until you get an odd number k'
	k''=2k'+1
	divide k'' by 2 until you get an odd number k'''
	return k'''

Given a number MAX, for every odd k<2MAX+1, it finds its way 
	from k to 1 iterating the function and eventually draws
	the corresponding graph.
To make things happen, run
	$ ./collatzTo1.sh
	and it will be asked you a value for MAX (positive integer, please)
It is possible to hide all multiples of 3 (answer 'y' to the second question);
	this makes sense because multples of 3 are dead nodes (nothing points to them): 
	if n is an odd integer, then 3n+1 is not a multiple of 3.
Two files will be generated: 
	- collatzTo1-"$MAX".gv : this is a representation of the graph, 
			in dot format ( https://en.wikipedia.org/wiki/DOT_(graph_description_language) )
			as input for the program 'dot'
	- collatzTo1-"$MAX".png : this picture is the output of 'dot'

What you need to be installed on your computer:
- Python3
- Python modules ( $ python -m pip install "module" ):
		* matplotlib.pyplot
		* networkx
		* sys
- dot from Graphviz, as in http://www.graphviz.org/documentation/
		see also https://en.wikipedia.org/wiki/Graphviz

