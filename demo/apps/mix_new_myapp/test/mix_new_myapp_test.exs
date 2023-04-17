defmodule MixNewMyappTest do
  use ExUnit.Case
  doctest MixNewMyapp

  test "greets the world" do
    assert MixNewMyapp.hello() == :world
  end
end
