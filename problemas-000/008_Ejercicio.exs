defmodule FabricaDeFernando do
  def main do
    cedula = "ingrese la cedula del cliente"
    |> Util.ingresar(:entero)

    monto = "ingrese el monto"
    |> Util.ingresar(:entero)

    precio_final = calcular_precio(cedula,monto)

    "el precio final de la compra es de #{precio_final}"
    |>IO.puts()
  end

  def calcular_precio(cedula, monto) when rem(cedula, 1991) == 0  do
    monto/2
  end
  def calcular_precio(cedula, monto) when rem(cedula, 1991) != 0 do
    monto
  end

end
FabricaDeFernando.main()
