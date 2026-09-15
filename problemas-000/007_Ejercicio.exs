defmodule Descuentos do

  @doc"""
  Una empresa está haciendo una campaña para promocionar un nuevo producto. Por lo tanto, se está dando un porcentaje de descuento al valor total de la compra de los clientes, el cual varía según el monto de la compra.

  El programa debe solicitar al usuario el monto de la compra y luego aplicar el descuento correspondiente. Los rangos de descuento son los siguientes:

  - Si el monto es mayor a $50.000 y menor o igual a $100.000, el descuento es del 5%.
  - Si el monto es mayor a $100.000 y menor o igual a $500.000, el descuento es del 10%.
  - Si el monto es mayor a $500.000, el descuento es del 15%.

  Se requiere implementar un programa que calcule el precio final después de aplicar el descuento correspondiente e imprima un mensaje con el resultado.
  """
  def main do
    monto = "ingrese el monto"
    |> Util.ingresar(:entero)

    descuento = monto
    |> evaluar_descuento()

    IO.puts("Felicidades, tiene un descuento del: #{trunc(descuento * 100)}%")

    precio_final = calcular_precio_con_descuento(monto, descuento)

    precio_formateado = :erlang.float_to_binary(precio_final, [{:decimals, 2}, :compact])

    IO.puts("Todo queda a #{precio_formateado}")
  end

  def calcular_precio_con_descuento(precio,descuento) do
    precio - (precio*descuento)
  end

  def evaluar_descuento(monto) do
    cond do
      monto > 50000 and monto <= 100000 ->
        5/100
      monto > 100000 and monto <= 500000 ->
        10/100
      monto > 500000 ->
        15/100
    end

  end

end

Descuentos.main()
