% FACTS

connected(a,b).
connected(a,c).
connected(b,d).
connected(b,e).
connected(c,f).
connected(c,g).
connected(d,h).
connected(e,i).
connected(f,j).
connected(g,z).
connected(i,z).
connected(j,z).

% DFS

dfs(Start,Goal,Path):-
    search(Start,Goal,[Start],RevPath),
    reverse(RevPath,Path).

search(Goal,Goal,Path,Path).

search(Node,Goal,Visited,Path):-
    connected(Node,Next),
    \+ member(Next,Visited),
    search(Next,Goal,[Next|Visited],Path).

% RESULT