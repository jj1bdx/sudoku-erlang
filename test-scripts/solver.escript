#!/usr/bin/env escript
%% -*- erlang -*-
%%! -pa ./ebin

%% Note: execute from the root path

main(_) ->

    code:load_file(sudoku),
    {solved, Res} = sudoku:solve([
	[1, b, b, b, 8, b, 7, b, 9],
	[7, b, 3, 9, 4, b, 1, b, 6],
	[4, b, b, 7, 6, 1, b, b, 8],
	[b, b, b, 2, b, b, 5, b, b],
	[b, 4, 1, 3, b, 6, b, 7, 2],
	[b, b, b, 4, 9, 7, b, 3, b],
	[6, b, b, 1, 2, 9, b, 8, b],
	[2, 1, 4, b, 7, b, b, b, 3],
	[b, 9, b, 6, 3, b, 2, b, 5]
	]),
    sudoku:print(Res).

