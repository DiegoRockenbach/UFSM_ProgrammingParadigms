%6
yearSubtraction(AnoAtual,AnoBigFish,Res) :- Res is AnoAtual-AnoBigFish.

%7
genero(adamSandler, comedia).
genero(liamNeeson, acao).
genero(liamNeeson, suspense).
genero(jimCarrey, comedia).
genero(jasonMomoa, acao).
genero(jasonMomoa, drama).

%rev_prova
attrib1(a,81).
attrib1(b,42).
attrib2(a,5).
attrib2(b,1).

rule2(M) :- attrib2(_,M), M > 2.
rule3(X) :- findall(M, rule2(M), L), length(L,X).
rule4(X) :- findall(M, rule2(M), L), member(X,L).