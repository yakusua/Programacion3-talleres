defmodule Utils do
  def mostrar_mensaje(mensaje) do
    System.cmd("java",["-cp", "problema-001", "Mensaje", mensaje])
  end
end
