%%This code describes a function for implementing BFS using adjacent table or lists on MATLAB%%
%%At first, the size of table is stored and all the vertices are assigned
%%the value equal to the index of the particular vertex.
%%A queue Q is initialized and the source node is pushed into Q.
%%Parent nodes of all the nodes are NULL since they are not in the tree yet
%%but the parent node of source(root) is itself. The loop is iterated until
%%Q is empty and each time the elements are popped off from the queue and
%%added to the tree. All the neighbours of the popped element are traversed
%%and are added to the queue in FIFO method. If a node already is a child
%%of some other node, then it is skipped else it is added to the queue.
%%This process is continued until the queue Q is empty. The parent vector
%%is also obtained by extracting the parent of the node when it is popped
%%into the tree.

%% Copyright: Akhil Reddy Sai%%


function [tree,parentvector] = computeBFStree(AdjTable,start)
                                       %%Uncomment these lines for input%%
% % % clc; 
% % % clear all;
% % % AdjTable = input('Enter the adjacency table of the graph in {a,[b c],[], ,[]} format:   '); %Input AdjTable
% % % start = input('Enter the start node V as an integer ranging [1,n] where n=size of the graph   :   ');%Input start node 

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
parentvector = 0;
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
parentvector
end








