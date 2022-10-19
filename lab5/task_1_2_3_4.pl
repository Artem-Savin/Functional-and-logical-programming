odd(X):- X mod 2 =:= 1.

print_odd(X,Y):-
    odd(Y), number(X),
    write(Y), write(" "), fail.

print_odd(X, Y):-
    number(X),
    (Y =:= X, !; Y1 is Y - 1, print_odd(X, Y1)).

task1(_):-
    read(X), read(Y),
    write('*'),
    print_odd(X, Y).

fibo(0, Y) :- Y is 1, !.
fibo(1, Y) :- Y is 1, !.

fibo(X,Y):-
    X1 is X - 2,
    X2 is X - 1,
    fibo(X1, Y1),
    fibo(X2, Y2),
    Y is Y1 + Y2.

task2(_):-
    repeat,
    read(X),
    (X<0, !; fibo(X, Y), write(Y), nl, fail).

task3(_):-
  read(List),
  read(X),read(Y),
  list_making(X,Y,Min,Max),
  create_list(List,Min,Max,List1,List2,List3),
  write(List1),write(", "),write(List2),write(", "),writeln(List3).

list_making(X,Y,Min,Max):-
  X>Y, !, Max = X, Min = Y; Max = Y, Min = X.

create_list([], _X, _Y, [], [], []).

create_list([Head|Tail], X, Y, [Head|List1], List2, List3):-
    Head < X, !, create_list(Tail, X, Y, List1, List2, List3).
create_list([Head|Tail], X, Y, List1, [Head|List2], List3):-
    Head =< Y, !, create_list(Tail, X, Y, List1, List2, List3).
create_list([Head|Tail], X, Y, List1, List2, [Head|List3]):-
    !, create_list(Tail, X, Y, List1, List2, List3).

%[3,7,1,-3,5,8,0,9,2], 8, 3