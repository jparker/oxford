defmodule OxfordTest do
  use ExUnit.Case
  doctest Oxford

  test "split/1 requires the oxford comma" do
    assert Oxford.split("the strippers, JFK and Stalin") === \
      ["the strippers", "JFK and Stalin"]
  end

  test "split/1 handles lists that use conjunctions instead of commas" do
    assert Oxford.split("one and two and three") === ["one", "two", "three"]
  end

  test "split/1 handles lists with compound elements" do
    assert Oxford.split("one and two, red and blue, and me and you") === \
      ["one and two", "red and blue", "me and you"]
  end
end
