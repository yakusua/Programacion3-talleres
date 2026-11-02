defmodule contarVocales do
  def contar_vocales(cadena) do
    cadena
    |> String.downcase()
    |> String.graphemes()
    |> Enum.filter(&vocal?/1)
    |> length()
  end

  defp vocal?(letra) do
    if letra in ["a", "e", "i", "o", "u"] do
      true
    else
      false
    end

  end
end
