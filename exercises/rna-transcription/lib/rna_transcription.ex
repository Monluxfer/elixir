defmodule RnaTranscription do
    @doc """
    Transcribes a character list representing DNA nucleotides to RNA

    ## Examples

    iex> RnaTranscription.to_rna('ACTG')
    'UGAC'
    """
    @spec to_rna([char]) :: [char]
    def to_rna(dna) do
        dna
        |> Enum.map(fn x -> case x do
            71 -> 67
            67 -> 71
            65 -> 85
            84 -> 65
        end end)
    end
end
