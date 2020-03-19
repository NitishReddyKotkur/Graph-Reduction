function [] = lanczos(A, m)
prompt="enter g value";
g=input(prompt);%To choose the type of graph
if g == 1 
        fileID = fopen('cycle_graph_output.txt','w')%Creates a output text file
        fprintf(fileID,'Edges\t Initial_nodes\t Nodes_after_reduction\t Difference \n') 
        myfolderinfo = dir('cycle_graph') ; %lists folder contents   
        N = length(myfolderinfo) ; %specifies number of files in the folder
        else if g == 2
        fileID = fopen('wheel_graph_output.txt','w')
        fprintf(fileID,'Edges\t Initial_nodes\t Nodes_after_reduction\t Difference \n')
        myfolderinfo = dir('wheel_graph') ;    
        N = length(myfolderinfo) ; 
        else if g == 3
        fileID = fopen('windmill_graph_output.txt','w')
        fprintf(fileID,'Edges\t Initial_nodes\t Nodes_after_reduction\t Difference \n')
        myfolderinfo = dir('windmill_graph') ;  
        N = length(myfolderinfo) ; 
            end
            end
end
for i = 3:N %To iterate through every file in the respective directory
A=readmatrix([myfolderinfo(i).folder '/' myfolderinfo(i).name],'Whitespace',' []');%Reads data as matrix from all the files  in the respective directory
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
for j=2:n+1 %lanczos algorithm
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
T %Tridiagonal matrix after reduction 
n2=j-1;%number of nodes after reduction
d=n-n2;%difference between intial nodes and total nodes after reduction
fprintf(fileID,'%d\t\t\t %3d\t\t\t\t %-5d\t\t\t\t %d\t \n',e,n,n2,d);
end
end

