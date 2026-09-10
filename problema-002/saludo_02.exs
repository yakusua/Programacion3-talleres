defmodule SaludoBienvenida do
  def main do
    "ingrese el nombre del empleado :"
    |> Util.ingresar()
    |> saludo_con_nombre()
    |> Util.mostrar_mensaje()
  end

  def saludo_con_nombre(nombre) do
    "Bienvenido #{nombre}, a la empresa Once Ltda"
  end


end

SaludoBienvenida.main()
