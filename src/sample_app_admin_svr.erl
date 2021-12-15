%%%-------------------------------------------------------------------
%%% @author kasun
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Nov 2021 20.11
%%%-------------------------------------------------------------------
-module(sample_app_admin_svr).
-author("kasun").

-behaviour(gen_server).

%% API
-export([start_link/0, test_func/0]).

%% gen_server callbacks
-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2,
  code_change/3]).

-define(SERVER, ?MODULE).

-record(sample_app_admin_svr_state, {}).

%%%===================================================================
%%% API
%%%===================================================================

%% @doc Spawns the server and registers the local name (unique)
-spec(start_link() ->
  {ok, Pid :: pid()} | ignore | {error, Reason :: term()}).
start_link() ->
  gen_server:start_link({local, ?SERVER}, ?MODULE, [], []).

test_func() ->
  io:fwrite("admin svr test_func ~w",[111]).


%%%===================================================================
%%% gen_server callbacks
%%%===================================================================

%% @private
%% @doc Initializes the server
-spec(init(Args :: term()) ->
  {ok, State :: #sample_app_admin_svr_state{}} | {ok, State :: #sample_app_admin_svr_state{}, timeout() | hibernate} |
  {stop, Reason :: term()} | ignore).
init([]) ->
  io:fwrite("admin svr ~w",[1+1]),
  {ok, #sample_app_admin_svr_state{}}.

%% @private
%% @doc Handling call messages
-spec(handle_call(Request :: term(), From :: {pid(), Tag :: term()},
    State :: #sample_app_admin_svr_state{}) ->
  {reply, Reply :: term(), NewState :: #sample_app_admin_svr_state{}} |
  {reply, Reply :: term(), NewState :: #sample_app_admin_svr_state{}, timeout() | hibernate} |
  {noreply, NewState :: #sample_app_admin_svr_state{}} |
  {noreply, NewState :: #sample_app_admin_svr_state{}, timeout() | hibernate} |
  {stop, Reason :: term(), Reply :: term(), NewState :: #sample_app_admin_svr_state{}} |
  {stop, Reason :: term(), NewState :: #sample_app_admin_svr_state{}}).
handle_call(_Request, _From, State = #sample_app_admin_svr_state{}) ->
  {reply, ok, State}.

%% @private
%% @doc Handling cast messages
-spec(handle_cast(Request :: term(), State :: #sample_app_admin_svr_state{}) ->
  {noreply, NewState :: #sample_app_admin_svr_state{}} |
  {noreply, NewState :: #sample_app_admin_svr_state{}, timeout() | hibernate} |
  {stop, Reason :: term(), NewState :: #sample_app_admin_svr_state{}}).
handle_cast(_Request, State = #sample_app_admin_svr_state{}) ->
  {noreply, State}.

%% @private
%% @doc Handling all non call/cast messages
-spec(handle_info(Info :: timeout() | term(), State :: #sample_app_admin_svr_state{}) ->
  {noreply, NewState :: #sample_app_admin_svr_state{}} |
  {noreply, NewState :: #sample_app_admin_svr_state{}, timeout() | hibernate} |
  {stop, Reason :: term(), NewState :: #sample_app_admin_svr_state{}}).
handle_info(_Info, State = #sample_app_admin_svr_state{}) ->
  {noreply, State}.

%% @private
%% @doc This function is called by a gen_server when it is about to
%% terminate. It should be the opposite of Module:init/1 and do any
%% necessary cleaning up. When it returns, the gen_server terminates
%% with Reason. The return value is ignored.
-spec(terminate(Reason :: (normal | shutdown | {shutdown, term()} | term()),
    State :: #sample_app_admin_svr_state{}) -> term()).
terminate(_Reason, _State = #sample_app_admin_svr_state{}) ->
  ok.

%% @private
%% @doc Convert process state when code is changed
-spec(code_change(OldVsn :: term() | {down, term()}, State :: #sample_app_admin_svr_state{},
    Extra :: term()) ->
  {ok, NewState :: #sample_app_admin_svr_state{}} | {error, Reason :: term()}).
code_change(_OldVsn, State = #sample_app_admin_svr_state{}, _Extra) ->
  {ok, State}.

%%%===================================================================
%%% Internal functions
%%%===================================================================
