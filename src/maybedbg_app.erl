%%%-------------------------------------------------------------------
%% @doc maybedbg public API
%% @end
%%%-------------------------------------------------------------------

-module(maybedbg_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    maybedbg_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
