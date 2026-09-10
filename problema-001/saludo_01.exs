
 defmodule Saludo do
  defp saludarEspanol do
    "Bienvenidos a la empresa Once Ltda"
    |> Utils.mostrar_mensaje()
  end
  def main do
    saludarEspanol()
  end
 end

 Saludo.main()
