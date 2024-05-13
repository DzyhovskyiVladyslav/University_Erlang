-module(lab3).
-export([func_main/4]).

func_main(X, Xf, H, N)->
	func_list(X, Xf + H / 100, H, N). 

func_list(X, Xf, H, N) when X =< Xf ->
	[pow(X, 2) * sum_tail(X, N, 0) | func_list(X + H, Xf, H, N)];
func_list(X, Xf, _, _) when X > Xf -> 
	[].

sum_tail(X, I, Acc) when I > 0 ->
	sum_tail(X, I - 1, Acc + pow(I, 2) + X);
sum_tail(X, 0, S) -> 
	S.

pow(X, 0) -> 
	1;
pow(X, 1) -> 
	X;
pow(X, Y) -> 
	X * pow(X, Y - 1).