%%%-------------------------------------------------------------------
%% @doc call public API
%% @end
%%%-------------------------------------------------------------------

-module(call_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    call_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
