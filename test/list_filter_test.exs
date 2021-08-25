defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "when inserts a list not contains odd numbers" do
      even = ["2", "oi", "ab", "6", "14"]
      assert ListFilter.call(even) == 0
    end

    test "when the list contains only words" do
      words = ["oi", "a", "ab", "abc"]
      assert ListFilter.call(words) == 0
    end

    test "when the list contains even, odd and words" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      assert ListFilter.call(list) == 3
    end
  end
end
