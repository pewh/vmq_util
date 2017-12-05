%%%-------------------------------------------------------------------
%% @doc vmq_util public API
%% @end
%%%-------------------------------------------------------------------

-module(vmq_util_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    vmq_util_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
