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
Two files will be generated: 
	- collatzTo1-"$MAX".gv : this is a representation of the graph, 
			as input for the program 'dot'
	- collatzTo1-"$MAX".png : this picture is the output of 'dot'


