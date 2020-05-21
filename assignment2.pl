factor(X,N) :- X1 is X-1, between(1,X1,N), 0 is X mod N. 

factors(X, L) :- setof(N, factor(X,N), L).

perfect(N) :- factors(N, L), sumlist(L, N).
