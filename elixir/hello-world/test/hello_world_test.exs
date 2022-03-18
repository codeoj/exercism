defmodule HelloWorldTest do
  use ExUnit.Case

  test "when a string says 'Hello, World!'" do
    assert HelloWorld.hello() == "Hello, World!"
  end
end
