defmodule Utils do

  #pattern matching
  def ingresar(mensaje, :texto) do
    mensaje
    |> IO.gets()
    |> String.trim()
  end

  def ingresar(mensaje, :entero) do
    mensaje
    |> IO.gets()
    |> String.trim()
    |> String.to_integer()
  end
end
