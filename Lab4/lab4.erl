-module(lab4).
-export([dl_n/1]).


dl_n([X|L]) ->
if
	X rem 2 == 0 ->
		if
			L /= [] -> [X|dl_n(L)];
			L == [] -> [X|L]
		end;
	X rem 2 == 1 ->
		if
			L /= [] -> dl_n(L);
			L == [] -> L
		end
end.