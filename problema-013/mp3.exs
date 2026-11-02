Code.require_file("cancion.exs")
Code.require_file("persistencia.exs")

defmodule GestionMusica do

  def main do
    "ingrese los datos de la cancion: "
    |> Cancion.ingresar_cancion()
    |> Cancion.generar_mensaje()
    |> Util.mostrar_mensaje()

  end

  def main1 do
    "Ingrese los datos de las canciones:"
    |> Cancion.ingresar(:canciones)
    |> Persistencia.guardar(&Cancion.convertir_cancion_linea/1)

    Persistencia.cargar(&Cancion.convertir_linea_cancion/1)
    |> Cancion.generar_mensaje(:canciones)
    |> Util.mostrar_mensaje()
  end


end
GestionMusica.main1()
