-module(sender).
-export([start/0]).

start() ->
  Cmd = "python -u receiver.py",
  Numlist = "1,2,3\n",

  % Open port
  Port = open_port({spawn, Cmd},[]),
  io:format("Port opened at ~p.~n",[Port]),
  % Send data
  port_command(Port, Numlist),
  io:format("Sent number list ~p through the port.~n", [Numlist]),

  % Wait for data
  receive
    {Port, {data, Data}} ->
      io:format("Received sum of numbers through the port: ~p.~n", [Data]);
    _ ->
      io:format("Received data from Python process with bad format.~n")
  end.
