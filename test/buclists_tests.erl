-module(buclists_tests).

-include_lib("eunit/include/eunit.hrl").

buclists_test_() ->
  {setup,
   fun setup/0, fun teardown/1,
   [
    ?_test(t_pipemap())
    , ?_test(t_keyfind())
    , ?_test(t_delete_if())
    , ?_test(t_splitn())
    , ?_test(t_nsplit())
    , ?_test(t_keyupdate())
   ]}.

setup() ->
  ok.

teardown(_) ->
  ok.

t_pipemap() ->
  ?assertEqual(["HELLO", "WORLD"],
               buclists:pipemap([fun atom_to_list/1,
                                 fun string:to_upper/1], [hello, world])).

t_keyfind() ->
  ?assertEqual(value, buclists:keyfind(key, 1, [{key, value}], undefined)),
  ?assertEqual({key, value, more}, buclists:keyfind(key, 1, [{key, value, more}], undefined)),
  ?assertEqual(value, buclists:keyfind(key, 1, [{key, value, more}], 2, undefined)),
  ?assertEqual(undefined, buclists:keyfind(missing_key, 1, [{key, value}], undefined)).

t_delete_if() ->
  ?assertEqual([1, 2, 3], buclists:delete_if(fun(E) ->
                                               E > 3
                                           end, [1, 2, 3, 4, 5])).

t_splitn() ->
  ?assertEqual([[a, b, c], [d, e, f], [g]],
               buclists:splitn([a, b, c, d, e, f, g], 3)).

t_nsplit() ->
  ?assertEqual([[a, b], [c, d], [e, f, g]],
               buclists:nsplit([a, b, c, d, e, f, g], 3)).

t_keyupdate() ->
  ?assertEqual([{key, value}],
               buclists:keyupdate(key, 1, [], {key, value})),
  ?assertEqual([{key, value}, {a, a}, {b, b}],
               buclists:keyupdate(key, 1, [{a, a}, {b, b}], {key, value})),
  ?assertEqual([{a, value}, {b, b}],
               buclists:keyupdate(a, 1, [{a, a}, {b, b}], {a, value})),
  ?assertEqual([{key, value}, {b, b}],
               buclists:keyupdate(a, 1, [{a, a}, {b, b}], {key, value})).

