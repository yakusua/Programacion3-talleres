

defmodule Uniquindio_Mails do
@doc"""
La oficina de admisiones de la universidad necesita un programa que genere el correo institucional de un estudiante a partir de su nombre y su apellido.
El programa debe solicitar al usuario su nombre y su apellido por separado, y luego construir el correo siguiendo estas reglas:
Todo en minúsculas.
Sin espacios en blanco al inicio o al final.
Con el formato nombre.apellido@uniquindio.edu.co.
Por ejemplo, si el usuario ingresa Carlos y Florez, el programa debe mostrar:
Su correo institucional es: carlos.florez@uniquindio.edu.co
Para resolverlo puede usar las siguientes funciones:
String.trim/1 para eliminar los espacios en blanco al inicio y al final.
String.downcase/1 para convertir el texto a minúsculas.
Tenga en cuenta lo siguiente:
Organice la solución en un módulo con una función main que delegue en funciones pequeñas (por ejemplo, una para leer los datos, otra para construir el correo y otra para imprimir el mensaje).
Use el operador pipe |> para encadenar las transformaciones de las cadenas.
Aplique las buenas prácticas de documentación y nomenclatura vistas en esta guía.

"""

  def main do

    nombre = "ingrese el nombre"
    |> Util.ingresar(:text)

    apellido = "ingrese el apellido"
    |> Util.ingresar(:text)

    generar_mail(nombre,apellido)
    |> IO.puts()

  end

  defp generar_mail(nombre,apellido) do
    "#{nombre}.#{apellido}@uniquindio.edu.co"
    |> String.replace(" ","")
    |> String.trim()
    |> String.downcase()

  end

end
Uniquindio_Mails.main()
