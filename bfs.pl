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

bfs(Start,Goal,Path):-
    search([[Start]],Goal,RevPath),
    reverse(RevPath,Path).

search([[Goal|Rest]|_],Goal,[Goal|Rest]).

search([[Node|Rest]|Paths],Goal,Path):-
    findall([Next,Node|Rest],
            (connected(Node,Next),
             \+ member(Next,[Node|Rest])),
            NewPaths),
    append(Paths,NewPaths,Queue),
    search(Queue,Goal,Path).