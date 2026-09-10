


defmodule Tienda do
  @moduledoc """
  Módulo que representa una tienda de productos.
  -version 1.0
  -autor: Joan Camilo Lopez Ramirez
  -fecha: 2026-08-09
  """

  @doc """
  Función principal que inicia la aplicación de la tienda.
  """
  def main do
    valor_total = "ingresar el valor total de la compra "
    |> Utils.ingresar(:entero)

    valor_entregado = "ingresar el valor de pago: "
    |> Utils.ingresar(:entero)

    calcular_devuelta(valor_total, valor_entregado)
    |> generar_mensaje()
    |> IO.puts()
  end

  def calcular_devuelta(valor_total , valor_entregado) do
    valor_total - valor_entregado
  end

  def generar_mensaje(devuelta) do
    "la devuelta es #{devuelta}"
  end
end

Tienda.main()
