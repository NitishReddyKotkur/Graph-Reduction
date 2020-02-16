import matplotlib.pyplot as plt
import networkx as nx
import sys
import scipy as sp
from networkx.generators.expanders import *
import itertools

n=int(input("enter n value")) #size of the graph or number of nodes in the graph
i=int(input("enter i value")) #To choose type of the graph

if i == 1:
	G =  nx.cycle_graph(n)#creates cycle graph of n nodes
	print(nx.info(G))
	A = nx.adjacency_matrix(G)
	sp.set_printoptions(linewidth=sp.inf)
	sp.set_printoptions(threshold=sys.maxsize)
	print(A.todense(),file=open("cycle_graph\%d.txt"%(n),'w')) #Outputs the adjacency matrix to a textfile and stores it in a folder called 'cycle graph'
	nx.draw(G)
	plt.show()
elif i == 2:
	G =  nx.wheel_graph(n) #creates wheel graph of n nodes
	print(nx.info(G))
	A = nx.adjacency_matrix(G) #creates an adjacency matrix for graph G
	sp.set_printoptions(linewidth=sp.inf)
	sp.set_printoptions(threshold=sys.maxsize)
	print(A.todense(),file=open("wheel_graph\%d.txt"%(n),'w')) #Outputs the adjacency matrix to a textfile and stores it in a folder called 'wheel graph'
	nx.draw(G)
	plt.show()
elif i == 3:
	k=int(input("enter k value")) %Clique size
	G =  nx.windmill_graph(n,k) #creates wheel graph of n nodes
	print(nx.info(G))
	A = nx.adjacency_matrix(G)
	sp.set_printoptions(linewidth=sp.inf)
	sp.set_printoptions(threshold=sys.maxsize)
	print(A.todense(),file=open("windmill_graph\%d_%d.txt"%(n,k),'w')) #Outputs the adjacency matrix to a textfile and stores it in a folder called 'wheel graph'
	nx.draw(G)
	plt.show()
