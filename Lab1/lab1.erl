-module(lab1).
-export([ship_classification/3]).
ship_classification(0,'','')->
'Capital ships, aircraft carriers, cruisers';
ship_classification(1,0,'D')->
'Destroyers (until 1940), capital ships, aircraft carriers, cruisers (from 1940)';
ship_classification(1,0,'F')->
'Destroyers (until 1940) and large auxiliary combatants (from 1940)';
ship_classification(1,0,'G')->
'Destroyers (from 1940)';
ship_classification(1,0,'H')->
'Destroyers';
ship_classification(1,0,'I')->
'Capital ships, aircraft carriers, cruisers (until 1940), destroyers (from 1940)';
ship_classification(1,0,'J')->
'Minesweepers';
ship_classification(1,0,'K')->
'Corvettes, frigates';
ship_classification(1,0,'L')->
'Escort destroyers, sloops (until 1941)';
ship_classification(1,0,'M')->
'Minelayers';
ship_classification(1,0,'N')->
'Minesweepers';
ship_classification(1,0,'P')->
'Sloops (until 1939), boom defence vessels (until 1940)';
ship_classification(1,0,'R')->
'Destroyers (from 1942), sloops';
ship_classification(1,0,'T')->
'River gunboats, netlayers';
ship_classification(1,0,'U')->
'Sloops (from 1941)';
ship_classification(1,0,'W')->
'Tugs and salvage vessels';
ship_classification(1,0,'X')->
'Special service vessels';
ship_classification(1,0,'Z')->
'Gate, mooring and boom defence vessels';
ship_classification(1,0,'4')->
'Auxiliary anti-aircraft vessels';
ship_classification(1,0,'FY')->
'Fisheries (auxiliary fishing trawlers, drifter etc.)';
ship_classification(1,1,'C')->
'U class submarines';
ship_classification(1,1,'F')->
'River class submarines';
ship_classification(1,1,'H')->
'H class submarines';
ship_classification(1,1,'L')->
'L class submarines';
ship_classification(1,1,'M')->
'Grampus class submarines';
ship_classification(1,1,'P')->
'O class, P class submarines, U class (wartime construction), V class,  S class (wartime construction), T class, A class, United States Navy lend-lease submarines, commandeered foreign construction, captured enemy submarines';
ship_classification(1,1,'R')->
'R class submarines';
ship_classification(1,1,'S')->
'S-class submarines (pre-war construction)';
ship_classification(1,1,'T')->
'T-class submarines (pre-war construction)'.