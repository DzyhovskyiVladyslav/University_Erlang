-module(lab8).
-export([no_negative_one/1]).
-export([no_negative_two/1]).
-export([no_negative_three/1]).
-export([no_negative_four/1]).

no_negative_one([X|Xs]) when X >= 0 -> 
	[X|no_negative_one(Xs)];
no_negative_one([X|Xs]) when X < 0 ->
	no_negative_one(Xs);
no_negative_one([])->[].

no_negative_two([X|Xs])->
	case X >= 0 of
	true ->
		[X|no_negative_two(Xs)]; _ -> no_negative_two(Xs)
	end;
no_negative_two([])->[].

no_negative_three(Xs)->
	lists:filter(fun (X) -> X >= 0 end, Xs).

no_negative_four(Xs)->
	[X||X <- Xs, X >= 0].
