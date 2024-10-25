% fatos
resultado(joao, 8).
resultado(maria, 7).
resultado(pedro, 5).
resultado(jose, 6).
resultado(ana, 9).
falta(joao, 2).
falta(maria, 0).
falta(pedro, 5).
falta(jose, 1).
falta(ana, 0).

% regras
reprovado(X) :-
    resultado(X, Nota),
    falta(X, F),
	(Nota < 6 ; F > 3).

% Respostas:
% 1)
% 1. Resultado(joao,x) - X = 8
% 
% 2. falta(x,y), y>0
% X = joao e Y = 2 / X = pedro e y = 5 / X = jose e Y = 1
%
% 3. reprovado(jose): falso
%
% 2)

aprovado(X) :-
    resultado(X, Nota),
    falta(X, F),
    (Nota >= 6, F =< 3).
