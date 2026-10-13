defmodule Nombre_adecuado do
@doc"""
Una red social desea validar de forma sencilla los nombres de usuario que eligen las personas al registrarse. Por ahora, la única regla es que el nombre de usuario debe tener al menos 5 caracteres (sin contar los espacios al inicio o al final).
El programa debe:
Solicitar al usuario el nombre de usuario que desea registrar.
Eliminar los espacios en blanco al inicio y al final.
Calcular su longitud usando la función String.length/1.
Mostrar un mensaje según el resultado:
Si tiene 5 caracteres o más: "Nombre de usuario válido".
Si tiene menos de 5 caracteres: "Nombre de usuario muy corto, debe tener al menos 5 caracteres".
Tenga en cuenta lo siguiente:
Use la estructura if/else para decidir el mensaje a mostrar.
Separe la lógica en funciones pequeñas y documente el módulo.


"""

  def main do
    nombre = solicitar_nombre()
    |> adecuar_nombre()
    |> contar_caracteres()
    |> mayor_que_cuatro()

    if(nombre) do
      IO.puts("Nombre de usuario válido")
    else
      IO.puts("Nombre de usuario muy corto, debe tener al menos 5 caracteres")
    end


  end

  def solicitar_nombre do
    "ingrese su nombre por favor"
    |> Util.ingresar(:text)
  end
  def adecuar_nombre(nombre) do
    nombre
    |> String.replace(" ","")
  end
  def contar_caracteres(nombre) do
    nombre
    |> String.length()
  end
  def mayor_que_cuatro (num) do
    num > 4
  end
end
Nombre_adecuado.main()
