#!/usr/bin/python3
import matplotlib.pyplot as plt
import networkx as nx
import sys
MAX=int(sys.argv[1])
print("MAX is: ")
print(MAX)

def dispari(x):
    while (x%2==0):
        x=x//2
    return(x)
def thefun(x):
    return(dispari(3*dispari(x)+1))
disp=[2*j+1 for j in range(MAX)]
G=nx.DiGraph()
for k in disp:
    a=k
    while 1:
        b=thefun(a)
        if (a,b) in G.edges():
            break
        G.add_edge(a,b)
        a=b

#print("Nodes of graph: ")
#print(G.nodes())
#print("Edges of graph: ")
#print(G.edges())

with open("graph02-"+str(MAX)+".gv","w") as OF:
    OF.write("digraph G {\n")
    for edge in G.edges():
        OF.write("\t" + str(edge[0]) + " -> " + str(edge[1]) + "\n")
    OF.write("}")

