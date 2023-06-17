-module(test).
-feature(maybe_expr, enable).

-export([
  test/1
]).

test(I) ->
  maybe
    true ?= erlang:is_integer(I),
    I + 10
  else
    _ -> <<"Not an integer">>
  end.
