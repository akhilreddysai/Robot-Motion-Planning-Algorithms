%%Test case for the graph mentioned in the question%%


AdjTable = {[2 3],[1 4 32],[1 4 5],[2 3 6],[3 6 7],[4 5 8],[5 8 9],[6 7 10],[7 8 10],[9 8 11],[10 12],[11 13],[12 14],[13 15], ...
    [14 16 18], [15 17],[16 19],[15 26],[17 20],[19 21],[20 22],[21 23],[22 24],[23 25 29],[24 26 27],[18 25],[25 28 29],[27 30],[24 27 30], ...
    [28 29 31],[30 32],[2 31]};

start = 1;

goal = 17;

a = computeBFSpath(AdjTable,start,goal)

%Computed path: 1->2->4->6->8->10->11->12>13>14>15>16>17%
% 13 nodes traversed including start and goal%
%verified with MATLAB's inbuilt function bfs(A,u,target)%
%MATLAB's bfs function's path: 1->2->4->6->8->10->11->12>13>14>15>16>17%