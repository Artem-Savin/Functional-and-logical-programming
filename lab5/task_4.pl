%Например: [0,3,5,7,1,5,3,0,3,3,5,7,0,5,0] –> [0,3,5]. 
 
bubblesort(List, SortedList) :- 
 swap(List, List1), ! , 
 bubblesort( List1, SortedList). 
bubblesort(List, List). 
 
swap([ X, Y | Rest ], [ Y, X | Rest ]) :- 
 X > Y, !. 
swap([ Z | Rest ], [ Z | Rest1 ]) :- 
 swap(Rest, Rest1). 
 
freq_check :- 
  read(List), bubblesort(List, SList), cou(SList, _, ResList), write(ResList). 
 
cou([], 0, []). 
cou([H|B], K, [H]) :- 
 foo([H|B], H, K, List), cou(List, MX, _), K > MX, !. 
cou([H|B], MX, List1) :- 
 foo([H|B], H, K, List), cou(List, MX, List1), K < MX, !. 
cou([H|B], MX, [H|List1]) :- 
 foo([H|B], H, K, List), cou(List, MX, List1), K =:= MX, !. 
 
foo([], _, 0, []) :- !. 
foo([H|B], X, 0, [H|B]) :- H =\= X, !. 
foo([H|B], X, K, B1) :- H =:= X, foo(B, X, K1, B1), K is K1 + 1.