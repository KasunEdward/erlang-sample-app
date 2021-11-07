%%%-------------------------------------------------------------------
%% @doc sample_app public API
%% @end
%%%-------------------------------------------------------------------

-module(sample_app_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    sample_app_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
