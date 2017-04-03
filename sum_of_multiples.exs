defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, factors), do: find_multiples(1, limit, factors, [])

  defp find_multiples(current, limit, _factors, acc) when current == limit, do: Enum.sum(acc)
  defp find_multiples(current, limit, factors, acc), do: find_multiples(current + 1, limit, factors, acc ++ factor?(current, factors))

  defp factor?(_current, []), do: []
  defp factor?(current, [h|_t]) when rem(current, h) == 0, do: [current]
  defp factor?(current, [_h|t]), do: factor?(current, t)

end
