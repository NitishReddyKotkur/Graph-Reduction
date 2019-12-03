function [] = lanczos(A, m)
prompt="enter g value";
g=input(prompt);
if g == 1
fileID = fopen('output\dense_gnm_random_graphs_output.txt','w')
fprintf(fileID,'e\t n\t n2\t difference \n')
myfolderinfo = dir('dense_gnm_random_graph') ;    
N = length(myfolderinfo) ;
else if g == 2
        fileID = fopen('output\gnm_random_graphs_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('gnm_random_graph') ;    
        N = length(myfolderinfo) ;
else if g == 3
        fileID = fopen('output\powerlaw_cluster_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('powerlaw_cluster_graph') ;    
        N = length(myfolderinfo) ;
else if g == 4
        fileID = fopen('output\binomial_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('binomial_graph') ;    
        N = length(myfolderinfo) ;
else if g == 5
        fileID = fopen('output\barabasi_albert_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('barabasi_albert_graph') ;    
        N = length(myfolderinfo) ;
else if g == 6
        fileID = fopen('output\watts_strogatz_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('watts_strogatz_graph') ;    
        N = length(myfolderinfo) ; 
else if g == 7
        fileID = fopen('output\random_regular_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('random_regular_graph') ;    
        N = length(myfolderinfo) ;
else if g == 8
        fileID = fopen('output\duplication_divergence_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('duplication_divergence_graph') ;    
        N = length(myfolderinfo) ;
else if g == 9
        fileID = fopen('output\connected_watts_strogatz_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('connected_watts_strogatz_graph') ;    
        N = length(myfolderinfo) ;
else if g == 10
        fileID = fopen('output\dual_barabasi_albert_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('dual_barabasi_albert_graph') ;    
        N = length(myfolderinfo) ;
else if g == 11
        fileID = fopen('output\fast_gnp_random_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('fast_gnp_random_graph') ;    
        N = length(myfolderinfo) ;
else if g == 12
        fileID = fopen('output\erdos_renyi_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('erdos_renyi_graph') ;    
        N = length(myfolderinfo) ; 
else if g == 13
        fileID = fopen('output\gnp_random_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('gnp_random_graph') ;    
        N = length(myfolderinfo) ; 
else if g == 14
        fileID = fopen('output\newman_watts_strogatz_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('newman_watts_strogatz_graph') ;    
        N = length(myfolderinfo) ;
else if g == 15
        fileID = fopen('output\extended_barabasi_albert_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('extended_barabasi_albert_graph') ;    
        N = length(myfolderinfo) ;
else if g == 16
        fileID = fopen('output\circular_ladder_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('circular_ladder_graph') ;    
        N = length(myfolderinfo) ;
else if g == 17
        fileID = fopen('output\cycle_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('cycle_graph') ;    
        N = length(myfolderinfo) ;
else if g == 18
        fileID = fopen('output2\ladder_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('ladder_graph') ;    
        N = length(myfolderinfo) ; 
else if g == 19
        fileID = fopen('output2\path_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('path_graph') ;    
        N = length(myfolderinfo) ;
else if g == 20
        fileID = fopen('output2\star_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('star_graph') ;    
        N = length(myfolderinfo) ;
else if g == 21
        fileID = fopen('output2\wheel_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('wheel_graph') ;    
        N = length(myfolderinfo) ; 
else if g == 22
        fileID = fopen('output2\gnr_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('gnr_graph') ;    
        N = length(myfolderinfo) ; 
else if g == 23
        fileID = fopen('output2\hypercube_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('hypercube_graph') ;    
        N = length(myfolderinfo) ;
else if g == 24
        fileID = fopen('output2\gnc_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('gnc_graph') ;    
        N = length(myfolderinfo) ;
else if g == 25
        fileID = fopen('output2\caveman_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('caveman_graph') ;    
        N = length(myfolderinfo) ;
else if g == 26
        fileID = fopen('output2\connected_caveman_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('connected_caveman_graph') ;    
        N = length(myfolderinfo) ; 
else if g == 27
        fileID = fopen('output2\relaxed_caveman_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('relaxed_caveman_graph') ;    
        N = length(myfolderinfo) ; 
else if g == 28
        fileID = fopen('output2\planted_partition_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('planted_partition_graph') ;    
        N = length(myfolderinfo) ; 
else if g == 29
        fileID = fopen('output2\ring_of_cliques_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('ring_of_cliques') ;    
        N = length(myfolderinfo) ;
else if g == 30
        fileID = fopen('output2\windmill_graph_output.txt','w')
        fprintf(fileID,'e\t n\t n2\t difference \n')
        myfolderinfo = dir('windmill_graph') ;    
        N = length(myfolderinfo) ;  
    end
    end        
    end    
    end
    end
    end
    end     
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end    
    end    
    end
    end
    end
end
for i = 3:N
thisfile = myfolderinfo(i).name
A=readmatrix([myfolderinfo(i).folder '\' myfolderinfo(i).name],'Whitespace',' []');
[n,k] = size(A);
e=sum(A(:) == 1)/2;
V = zeros(k,k);
%V(:,2) = rand(k,1);
V(:,2)=0;
V(1,2)=1;
V(1,2)=V(1,2)';
V(:,2)=V(:,2)/norm(V(:,2),2);
beta(2)=0;
loopcnt = 0;
for j=2:n+1
    w = A*V(:,j) - beta(j)*V(:,j-1);
    alpha(j) = w'*V(:,j);
    w = w - alpha(j)*V(:,j); 
    beta(j+1) = norm(w,2);
    loopcnt = loopcnt + 1;
    if beta(j+1) < 0.001 
    break
    end
    V(:,j+1) = w/beta(j+1);    
end
m=loopcnt-1;
T=sparse(m+1,m+1);
for i=2:m+1
    T(i-1,i-1)=alpha(i);
    T(i-1,i)=beta(i+1);
    T(i,i-1)=beta(i+1);
end 
disp(['number of loops: ' num2str(loopcnt)]);
T(m+1,m+1)=alpha(m+2);
V = V(:,2:loopcnt+1)
disp(['approximating eigenvalues are: ', num2str(eigs(T)')]);
T
j
n2=j-1;
d=n-n2;
fprintf(fileID,'%d\t %d\t %d\t %d\n',edges,initial_nodes,nodes_after_reduction,difference);
end
end
