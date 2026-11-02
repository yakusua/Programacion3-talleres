##
##defmodule SumaNumerosAnteriores do
##
##  def main do
##
##  end
##
##  def suma_numero(n) do
##    n + (suma_numero(n-1) )
##  end
##
##
##end

defmodule SumaNumerosAnteriores do

  def main do
    IO.puts("Ingrese un número:")
    n = String.to_integer(IO.gets("") |> String.trim())
    resultado = suma_numero(n)
    IO.puts("La suma de los números anteriores a #{n} es: #{resultado}")
  end

  def suma_numero(n), do: suma_numero(n, 0)

  defp suma_numero(0, acumulador), do: acumulador

  defp suma_numero(n, acumulador) do
    suma_numero(n - 1, acumulador + n)
  end
end
SumaNumerosAnteriores.main()
