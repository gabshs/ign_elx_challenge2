defmodule ListFilter do
  def call(list) do
    list
    |> get_numbers()
    |> count_odd()
  end

  defp get_numbers(list) do
    Enum.flat_map(list, fn item ->
      case Integer.parse(item) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
  end

  defp count_odd(list) do
    Enum.count(list, fn number -> rem(number, 2) == 1 end)
  end
end
