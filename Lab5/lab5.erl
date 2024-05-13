-module(lab5).
-export([change_list/1]).

change_list(List) ->
    L = length(List),
    ThirdPart = L div 3,
    SecondListPart = lists:sublist(List, ThirdPart + 1, ThirdPart),
    ThirdListPart = lists:reverse(lists:sublist(List, L - ThirdPart + 1, ThirdPart)),
    SecondListPart ++ ThirdListPart.