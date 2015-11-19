function P = computeBFSpath(AdjTable,start,goal)
% % clc; 
% % clear all;
% % AdjTable = input('Enter the adjacency table of the graph in {a,[b c],[], ,[]} format:   '); %Input AdjTable
% % start = input('Enter the start node V as an integer ranging [1,n] where n=size of the graph   :   ');%Input start node 
% % goal = input('Enter the goal node V as an integer ranging [1,n] where n=size of the graph   :   ');%Input goal node

%%Call the function computeBFSTree to give a tree and parent vector%%
[tree,parentvector]= computeBFStree(AdjTable,start);


sizeoftree = size(tree);
numberofvert = sizeoftree(2);
for i=1:numberofvert
vert(i)=tree(1,i);    % vertices of the tree are the vertices of extracted tree using computeBFSTree
end
for i=2:numberofvert
       parent(vert(i)) = parentvector(i);  %assign parents to the parent vector
end
parent(vert(1)) = vert(1);
P = [goal];  % start with goal node
u = goal;
while parent(u)~=u  % traverse until you reach the root node
    u =parent(u);
    P = [u P];  % append the path matrix from front-side (add the new element to the front side) with parent nodes starting from goal node to root node
end
end



function [tree,parentvector] = computeBFStree(AdjTable,start)
%%
sizeoftable = size(AdjTable);
numberofvert = sizeoftable(2);
for i=1:numberofvert
vert(i)=i;
end
Q =[];
Q = [Q vert(start)];
for i=1:numberofvert
    parent(vert(i)) = 0;
end
parent(vert(start)) = vert(start);

tree = [];
parentvector = [0];
while ~isempty(Q)
    v = Q(1);
    tree = [tree Q(1)];
    Q(1)=[];
    n = size(AdjTable{v}(1,:));
    for j=1:n(2)
      u = AdjTable{v}(1,j);
      if parent(u) == 0
        parent(u) = v;
        Q = [Q u];
        parentvector= [parentvector v];
      end
    end
end
end








