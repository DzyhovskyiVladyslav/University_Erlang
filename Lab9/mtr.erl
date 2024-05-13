-module(mtr). 
-export([main1/1, main2/1, swap1/1, swap2/1, mtr_gn1/1]). 

main1(N) ->
	timer:tc(mtr, swap1, [mtr_gn1(N)]). 
swap1([[A|R1]|Rs]) ->
	Pid = self(), 
	spawn(mtr1, ch, [Rs,A,Pid]), 
	receive {z, Z} -> Z end, 
	receive {list, L1} -> L1 end, 
	[[Z|R1]|L1]. 

main2(N) ->
	timer:tc(mtr, swap2, [mtr_gn1(N)]). 
swap2([[A|R1]|Rs]) ->
	[Z|_Rz] = lists:last(Rs), 
	[[[Z|R1]]|ch2(Rs,A)].
ch2([[_Z|Rz]],A) ->
	[[A|Rz]];
ch2([R|Rs],A) ->
	[R|ch2(Rs,A)].
mtr_gn1(N) ->
	[lists:map(fun(X) -> X/100 end, lists:seq(1, N)) | [[R||R <- lists:seq(1, N)] || _K<- lists:seq(1,N-1)]].

