Code.require_file("cancion.exs")
Code.require_file("csv.exs")

defmodule Persistencia do
  @nombre_archivo "cancion.csv"
  @titulos "titulo, artista, duracion, likes\n"

  def guardar(canciones, parser) do
    contenido = Csv.generar_mensaje_csv(canciones, parser) <> "\n"

    if File.exists?(@nombre_archivo) do
      Csv.anexar(@nombre_archivo, contenido)
    else
      Csv.crear_con_cabecera(@nombre_archivo, @titulos, contenido)
    end

  end

  def cargar(parser) do
    Csv.leer_csv(@nombre_archivo, parser)
  end

end
