defmodule Cancion do
  defstruct titulo: "", artista: "", duracion: 0, likes: 0

  def crear_cancion(titulo, artista, duracion, likes) do
    %Cancion{
      titulo: titulo,
      artista: artista,
      duracion: duracion,
      likes: likes
    }
  end

  def ingresar_cancion(mensaje) do
    IO.puts(mensaje)

    titulo = "ingrese el titulo de la cancion"
      |> Util.ingresar(:texto)

    artista = "ingrese el artista"
      |> Util.ingresar(:texto)

    duracion =  "ingrese la duracion"
      |> Util.ingresar(:entero)

    likes = "ingrese los likes"
      |> Util.ingresar(:entero)

    crear_cancion(titulo, artista, duracion, likes)
  end

  def ingresar(mensaje, :canciones) do
    mensaje
    |> ingresar([], :canciones)
  end

  defp ingresar(mensaje, canciones, :canciones) do
    cancion = ingresar_cancion(mensaje)
    canciones = canciones ++ [cancion]

    continuar =
      "¿Desea ingresar otra canción? (s/n): "
      |> Util.ingresar(:booleano)

    if continuar do
      ingresar(mensaje, canciones, :canciones)
    else
      canciones
    end
  end


  def generar_mensaje(lista_canciones, :canciones) do
    Enum.map_join(lista_canciones, "\n", fn cancion ->
      generar_mensaje(cancion)
    end)
  end

  def generar_mensaje(%Cancion{
        titulo: titulo,
        artista: artista,
        duracion: duracion,
        likes: likes
      }) do
    "La canción '#{titulo}' de #{artista} dura #{duracion} segundos y tiene #{likes} likes."
  end

  def convertir_cancion_linea(cancion) do
    "#{cancion.titulo}, #{cancion.artista}, #{cancion.duracion}, #{cancion.likes}"
  end

  def convertir_linea_cancion(linea) do
    [titulo, artista, duracion, likes] = String.split(linea, ",") |> Enum.map(&String.trim/1)

    crear_cancion(
      titulo,
      artista,
      String.to_integer(duracion),
      String.to_integer(likes)
    )
  end
end
