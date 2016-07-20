defmodule Oxford do
  @moduledoc """
  Functions for joining lists and splitting strings using an Oxford comma.
  """

  @doc """
  Splits a string into a list. Splits on commas or the conjunction "and". For
  lists of three or more elements, the Oxford comma is required.

  ## Parameters

    - sentence: a string list delimited by commas or the word "and"

  ## Examples

      iex> Oxford.split("one")
      ["one"]

      iex> Oxford.split("one and two")
      ["one", "two"]

      iex> Oxford.split("one, two, and three")
      ["one", "two", "three"]
  """

  @spec split(String.t()) :: [String.t()]

  def split(sentence) do
    delimiter = if sentence =~ ",", do: [", ", ", and "], else: " and "
    sentence |> String.split(delimiter)
  end

  @doc """
  Joins a list of strings into a single string. If there are two elements, they
  will be delimited by the word "and". If there are three elements, they will
  be delimited by commas, and the penultimate and ultimate element will be
  separated by the word "and" and an Oxford comma.

  ## Parameters

    - list: a list of strings to be joined togeter

  ## Examples

      iex> Oxford.join(["one"])
      "one"

      iex> Oxford.join(["one", "two"])
      "one and two"

      iex> Oxford.join(["one", "two", "three"])
      "one, two, and three"
  """

  @spec join([String.t()]) :: String.t()

  def join(list), do: join list, 0

  defp join([a],     _len),              do: a
  defp join([a|[b]],  len) when len < 1, do: join a, b, " and "
  defp join([a|[b]], _len),              do: join a, b, ", and "
  defp join([a|b],    len),              do: join a, join(b, len+1)

  defp join(a, b, conjunction \\ ", "), do: a <> conjunction <> b
end
