defmodule obtenerElNumeroMayor do

  defp obtener_numero_mayor(lista, numero_mayor) do
    if hd(lista) > numero_mayor do
      obtener_numero_mayor(tl(lista), hd(lista))
    else
      obtener_numero_mayor(tl(lista), numero_mayor)
    end
  end

  def obtener_numero_mayor(lista) do
    obtener_numero_mayor(tl(lista), 0)
  end

  def obtener_numero_mayor([]) do
    {:error, "la lista esta vacia"}
  end
end
