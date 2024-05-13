-module(lab7).
-export([group_by_city/0]).

db_people() -> [{adam, kyiv}, {bob, lviv}, {dick, kyiv}, {john, odesa}, {mike, odesa}, {nick, kharkiv}].

group_by_city() ->
DB = db_people(), 
L = [{City, [Name||{Name,C} <- DB, City == C]} || {_,City} <- DB], 
del_dbles_mod(L).

del_dbles_mod([{C,L}|T]) ->
Tclear = del_examples_mod(T,{C}), [{C,L}|del_dbles_mod(Tclear)];
del_dbles_mod([]) -> [].

del_examples_mod([],_) -> [];
del_examples_mod([{C,L}|Xs],Obj) ->
case {C} == Obj of
true -> del_examples_mod(Xs,Obj);
false -> [{C,L}|del_examples_mod(Xs,Obj)]
end.