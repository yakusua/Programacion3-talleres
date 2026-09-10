defmodule Utils do

  def ingresar(mensaje, :texto) do
    resultado = IO.gets(mensaje)
    if resultado == "" do
      throw("Error: No se puede ingresar un valor vacío")
    end
    String.trim(resultado)
  end

  def ingresar(mensaje, :entero) do
    try do
      resultado = IO.gets(mensaje)
      texto = String.trim(resultado)

      if texto == "" do
        throw("Error: No se puede ingresar un valor vacío")
      end

      String.to_integer(texto)
    rescue
      ArgumentError ->
        IO.puts("Error: Debes ingresar un número válido")
        :error
    catch
      _, mensaje_error ->
        IO.puts(mensaje_error)
        :error
    end
  end

end
