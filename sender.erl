-module(sender).
-export([start/0]).

start() ->
  Cmd = "python -u receiver.py",
  Port = open_port({spawn, Cmd},[]),
  receive
    {Port, {data, Data}} ->
      io:format("~p~n", [Data]);
    _ ->
      io:format("Received data from Python process with bad format.~n")
  end.
