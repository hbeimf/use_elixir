%%%-------------------------------------------------------------------
%% @doc use_elixir_in_erlang public API
%% @end
%%%-------------------------------------------------------------------

-module(use_elixir_in_erlang_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    use_elixir_in_erlang_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
