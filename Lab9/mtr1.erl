-module(mtr1). 
-export([ch/3]).
ch(L,A,Pid) ->Pid ! {list, ch1(L,A,Pid)}. 
ch1([[Z|Rz]],A,Pid) ->Pid ! {z, Z}, [[A|Rz]];
ch1([X|L],A,Pid) ->[X|ch1(L,A,Pid)].