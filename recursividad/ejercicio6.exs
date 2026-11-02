defmodule CadenaMasLarga do
  def main do
    ["hola","soy","camilo","hola mundo"]
    |> mas_larga()
    |> IO.puts()
  end
  def mas_larga([cadena]), do: cadena

  def mas_larga([h | t]) do
    mayor_restante = mas_larga(t)

    if String.length(h) >= String.length(mayor_restante) do
      h
    else
      mayor_restante
    end
  end
end
CadenaMasLarga.main()
