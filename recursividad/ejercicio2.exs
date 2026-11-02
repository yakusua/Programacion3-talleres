defmodule VocalesSinGraphemes do

  def main do
    "Hola elixir, te quiero mucho"
    |> contar_vocales()
    |> IO.puts()
  end

  def contar_vocales(cadena) do
    vocales = ~c"aeiou"

    cadena
    |> String.downcase()
    |> String.to_charlist()
    |> contar(0, vocales)
  end

  defp contar([], acumulador, _), do: acumulador

  defp contar([h | t], acumulador, vocales) do
    if Enum.member?(vocales, h) do
      contar(t, acumulador + 1, vocales)
    else
      contar(t, acumulador, vocales)
    end
  end
end

VocalesSinGraphemes.main()
