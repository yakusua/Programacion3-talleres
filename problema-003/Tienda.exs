


defmodule Tienda do
  @moduledoc """
  Módulo que representa una tienda de productos.
  -versio 0.0.0.1
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

    cond do
      valor_total < 0 ->
        IO.puts("no valores negativos")

      valor_entregado < 0 ->
        IO.puts("no valores negativos")

      valor_total > valor_entregado ->
        IO.puts("valor pagado insuficiente")

      true ->
        calcular_devuelta(valor_total, valor_entregado)
        |> generar_mensaje()
        |> IO.puts()
    end
  end

  @doc """
  Función para calcular el valor de la devuelta.
  """
  def calcular_devuelta(valor_total , valor_entregado) do
    valor_total - valor_entregado
  end

  @doc """
  Función para generar el mensaje de la devuelta
  """
  def generar_mensaje(devuelta) do
    "la devuelta es #{devuelta}"
  end
end

Tienda.main()
