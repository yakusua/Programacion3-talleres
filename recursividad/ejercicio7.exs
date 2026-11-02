defmodule Reversible do
  def main do
    36
    |> reversible?()
    |> IO.puts()

    5
    |> reversible?()
    |> IO.puts()
  end
  def reversible?(n) when not is_integer(n) or n <= 0 do
    false
  end

  def reversible?(n) do
    invertido = invertir(n, 0)

    suma = n + invertido

    todos_impares?(suma)
  end

  # Invertir número recursivamente
  defp invertir(0, acumulador), do: acumulador

  defp invertir(n, acumulador) do
    digito = rem(n, 10)

    invertir(
      div(n, 10),
      acumulador * 10 + digito
    )
  end

  # Verificar que todos los dígitos sean impares
  defp todos_impares?(n) when n < 10 do
    rem(n, 2) == 1
  end

  defp todos_impares?(n) do
    digito = rem(n, 10)

    rem(digito, 2) == 1 and
      todos_impares?(div(n, 10))
  end
end
Reversible.main()
