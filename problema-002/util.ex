defmodule Util do
  def mostrar_mensaje(mensaje) do
    IO.puts(mensaje)
  end
  def ingresar(mensaje) do
    mensaje
    |> IO.gets()
    |> String.trim()
  end
end
