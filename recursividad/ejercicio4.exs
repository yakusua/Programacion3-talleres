defmodule Potencia do
  def main do
    n = 16
    b = 2

    es_potencia?(n,b)
    |> IO.puts()

  end
  def es_potencia?(n, b) when n == 1, do: true
  def es_potencia?(n, b) when n < b, do: false

  def es_potencia?(n, b) do
    if rem(n, b) == 0 do
      es_potencia?(div(n, b), b)
    else
      false
    end
  end
end
Potencia.main()
