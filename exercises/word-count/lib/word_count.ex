defmodule WordCount do
    @ascii_punctuation ~r/!|"|\#|\$|%|&|'|\(|\)|\*|\+|,|\.|\/|:|;|<|=|>|\?|@|\[|\\|]|\^|_|`|\{|\||}|~/

    @doc """
    Count the number of words in the sentence.

    Words are compared case-insensitively.
    """
    @spec count(String.t()) :: map
    def count(sentence) do
        sentence
        |> String.downcase()
        |> String.replace(@ascii_punctuation, " ")
        |> String.split(" " ,trim: true)
        |> Enum.map_reduce(%{}, fn x, acc -> {x ,Map.update(acc, x, 1, &(&1 + 1))} end)
        |> Tuple.to_list()
        |> List.last()
    end
end
