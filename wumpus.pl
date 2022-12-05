https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
%% dummy wumpus.pl
:- module(wumpus, [initialState/5, guess/3, updateState/4]).
initialState(_,_,_,_, state).

guess(state, state, Guess):-
    % create a list of directions
	appendWithNum([north, south, east, west], 10, ResultList), 
	% create a list of shoots
	appendWithNum([shoot], 10, ShootList),
	% append to one single list
	append(ResultList, ShootList, AllList),
	%% Guess = AllList.
	%% random shuffle the list as the guess
	random_permutation(AllList, Guess).


updateState(state, _, _, state).

%% concat N InputList to one single list in  ResultList
%% InputList:  input list 
%% N: number of list
%% ResultList: output list
appendWithNum(InputList, N, ResultList):-
     N = 0, % when N = 0, ResultList = InputLis
     ResultList = InputList.

appendWithNum(InputList, N, ResultList):-
     NJ is N - 1,
     % recursive call, conat N - 1 List
     appendWithNum(InputList, NJ, TempList),  
     % append another InputList to TempList
     append(InputList, TempList, ResultList).
