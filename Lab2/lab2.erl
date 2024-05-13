-module(lab2).
-export([func_value/2]).
func_value(X, K) when X < 10 ->
	K * pow(X, K);
func_value(X, K) when X > 10 ->
	sum_direct(X, 8). 

pow(X, 0) -> 
	1;
pow(X, 1) -> 
	X;
pow(X, Y) -> 
	X * pow(X, Y - 1).

sum_direct(X, K) when K > 0 ->
	(X * K) + sum_direct(X, K - 1);
sum_direct(X, 0) -> 
	0.