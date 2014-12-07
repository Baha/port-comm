-module(sender).
-export([start/0]).

start() ->
  Cmd = "python -u receiver.py",
  Port = open_port({spawn, Cmd},[]).
