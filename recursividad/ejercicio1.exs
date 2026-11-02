defmodule Vocales do
  def main do
    "Hola elixir, te quiero mucho"
    |> contar_vocales()
    |> IO.puts()

  end
  def contar_vocales(cadena) do
    cadena
    |> String.downcase()
    |> String.graphemes()
    |> contar(0)
  end

  defp contar([], acumulador), do: acumulador

  defp contar([h | t], acumulador) when h in ["a", "e", "i", "o", "u"] do
    contar(t, acumulador + 1)
  end

  defp contar([_ | t], acumulador) do
    contar(t, acumulador)
  end
end
Vocales.main()
