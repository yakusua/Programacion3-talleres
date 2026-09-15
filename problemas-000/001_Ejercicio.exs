"""
Ejercicio 1
Una empresa de envíos ha desarrollado un sistema para registrar paquetes. El encargado desea que, al iniciar el sistema, se solicite al usuario su nombre, el nombre del destinatario y la dirección de entrega. Con esa información, el sistema debe mostrar un único mensaje concatenado que confirme el registro, por ejemplo:
"El paquete a nombre de Carlos quedó registrado para ser entregado a Pedro en la dirección Calle 123, Bogotá."

"""

defmodule EnviosMessage do
  def main do
    nombre = "ingrese su nombre "
    |> Util.ingresar(:text)

    nombre_destinatario = "ingrese el nombre del destinatario "
    |> Util.ingresar(:text)

    direccion = "ingrese su direccion "
    |> Util.ingresar(:text)

    generar_mensaje(nombre,nombre_destinatario,direccion)

  end
  defp generar_mensaje(nombre,nombre_destionatario,direccion) do
    IO.puts("El paquete a nombre de #{nombre} quedó registrado para ser entregado a #{nombre_destionatario} en la dirección #{direccion}.")
  end
end

EnviosMessage.main()
