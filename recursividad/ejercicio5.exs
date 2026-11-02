defmodule NumeroPerfecto do
  def main do
    6
    |> perfecto?()
    |> IO.puts()

    4
    |> perfecto?()
    |> IO.puts()

  end

  def perfecto?(n) when n <= 0, do: false

  def perfecto?(n) do
    suma_divisores(n, 1, 0) == n
  end

  defp suma_divisores(n, divisor, suma)
       when divisor >= n do
    suma
  end

  defp suma_divisores(n, divisor, suma) do
    nueva_suma =
      if rem(n, divisor) == 0 do
        suma + divisor
      else
        suma
      end

    suma_divisores(n, divisor + 1, nueva_suma)
  end
end
NumeroPerfecto.main()
