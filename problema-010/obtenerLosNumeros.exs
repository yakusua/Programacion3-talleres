defmodule ObtenerLosNumerosMayoresAUnNumero do
  def main do
    lista = [1, 2, 3, 4, 5]
    numero = 3
    IO.inspect(obtener_numeros_mayores_a_un_numero(lista, numero))
  end

  def obtener_numeros_mayores_a_un_numero(lista, numero) do
    obtener_numeros_mayores_a_un_numero(lista, numero, [])
  end

  defp obtener_numero_mayor([hd| tl], numero, ac) when hd >= numero do
    obtener_numero_mayor(tl, numero, [hd | ac])
  end

  defp obtener_numero_mayor([_ | tl], numero, ac) do
    obtener_numero_mayor(tl, numero, ac)
  end

  defp obtener_numero_mayor([], _numero, ac) do
    Enum.reverse(ac)
  end

end
