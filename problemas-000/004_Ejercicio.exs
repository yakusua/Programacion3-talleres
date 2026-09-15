defmodule Grados_Farenheid do
@doc"""
Ejercicio 4
En la guía anterior se vio que un programa útil debe tener efectos secundarios, pero que conviene minimizarlos y aislarlos. La siguiente función no cumple ese principio, porque mezcla el cálculo con la escritura en consola:
def convertir_temperatura(celsius) do
  resultado = celsius * 9 / 5 + 32
  IO.puts("La temperatura en Fahrenheit es: resultado")
end

Reescríbala dentro de un módulo, separándola en dos funciones: una completamente pura, que solo haga la conversión y devuelva el resultado, y otra que se encargue únicamente de imprimirlo. Agregue una función main que las coordine.
Responda: ¿cuál de las dos funciones podría probar automáticamente sin necesidad de leer la consola? Relacione su respuesta con la buena práctica de delegar responsabilidades a funciones pequeñas vista en esta guía.


¿cuál de las dos funciones podría probar automáticamente sin necesidad de leer la consola?
pues la 2, por que ella esta conformada por dos funciones, una que devuelve el resultado y otra que imprime el mensaje, permitiendo solo tomar una funcion para provarla sin usar la segunda que imrpime en consola.
en cambio la 1 imprime directamente en consola, siendo mas dificil probarla sin usar la consola para verificar el resultado
"""

  def main do
    celsius = "ingrese la temperatura en celsius "
    |> Util.ingresar(:entero)

    forma = "ingrese forma de calcular (1 o 2) "
    |> Util.ingresar(:text)

    cond do
      forma == "1" ->
        celsius
        |> celsius_to_farenheit()
        |> generar_mensaje()

      forma == "2" ->
        celsius
        |>convertir_temperatura()

      true ->
        IO.puts("pongalo bien ...")

    end
  end

  def convertir_temperatura(celsius) do
    resultado = celsius * 9 / 5 + 32
    IO.puts("La temperatura en Fahrenheit es: #{resultado}")
  end

  def celsius_to_farenheit(celsius) do
    celsius * 9 / 5 + 32
  end

  def generar_mensaje(farenheit) do
    IO.puts("La temperatura en Fahrenheit es: #{farenheit}")
  end



end
Grados_Farenheid.main()
