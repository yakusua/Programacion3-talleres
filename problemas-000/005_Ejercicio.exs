defmodule Tienda do
@doc"""
En una tienda, el precio que paga un cliente depende del descuento que le corresponde según su tipo. En lugar de escribir una función distinta para cada tipo de cliente, se puede escribir una función que fabrique esas funciones, siguiendo el patrón de funciones que devuelven funciones visto en la guía anterior.
Escriba un módulo con una función crear_descuento/1 que reciba un porcentaje de descuento y devuelva una función anónima. Esa función anónima recibirá un precio y deberá retornar el precio final, ya con el descuento aplicado.
Al usarla, debe comportarse así:
descuento_estudiante = Tienda.crear_descuento(20)   # Fabrica una función de 20 % de descuento
descuento_empleado = Tienda.crear_descuento(35)     # Fabrica una función de 35 % de descuento

descuento_estudiante.(50000)  # => 40000.0
descuento_empleado.(50000)    # => 32500.0


Tenga en cuenta lo siguiente:
El punto en descuento_estudiante.(50000) es obligatorio: así se invocan las funciones anónimas en Elixir.
El resultado es un número decimal (40000.0) porque el operador / en Elixir siempre devuelve un valor de tipo float.
Responda: cuando se ejecuta descuento_estudiante.(50000), la función crear_descuento(20) ya terminó hace rato. ¿De dónde obtiene entonces la función anónima el valor 20? Relacione su respuesta con el concepto de clausura visto en la guía anterior y con la inmutabilidad de los datos.


"""
  def crear_descuento(porcentaje) do
    fn precio ->
      precio * (1 - porcentaje / 100)
    end
  end

  def main do
    IO.puts("Sistema de Descuentos de Tienda")

    precio = "Ingrese el precio del producto (ej: 50000): "
      |> Util.ingresar(:entero)


    descuento_estudiante = crear_descuento(20)

    final_estudiante = descuento_estudiante.(precio)

    IO.puts("El precio con descuento de estudiante (20%) es: #{final_estudiante}")

    descuento_empleado = crear_descuento(35)

    final_empleado = descuento_empleado.(precio)

    IO.puts("El precio con descuento de empleado (35%) es: #{final_empleado}")

    IO.puts("¿Quiere aplicar un descuento personalizado?")

    respuesta = "Ingrese 'si' o 'no': "
    |> Util.ingresar(:text)

    if String.downcase(respuesta) == "si" do

      porcentaje_custom =  "Ingrese el porcentaje de descuento: "
        |> Util.ingresar(:entero)

      descuento_custom = crear_descuento(porcentaje_custom)
      final_custom = descuento_custom.(precio)
      IO.puts("El precio final con #{porcentaje_custom}% de descuento es: #{final_custom}")
    end

    IO.puts("Cálculo fin, muchas gracias")
  end
end
Tienda.main()
