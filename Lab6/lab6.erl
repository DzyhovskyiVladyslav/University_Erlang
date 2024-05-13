-module(lab6).
-export([sum_third_quadrant_matrix/1]).

sum_third_quadrant_matrix(Matrix) ->
    Size = length(Matrix),
    QuadrantSize = Size div 2,
    lists:sum([lists:sum(lists:sublist(Row, 1, QuadrantSize)) || Row <- lists:sublist(Matrix, QuadrantSize + 1, QuadrantSize)]).