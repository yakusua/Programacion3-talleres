Code.require_file("ruta.exs")

defmodule GestionRutas do
  def main do

    ruta1 = %Ruta{
      nombre: "Armenia-Salento",
      ciudad: "Armenia",
      distancia: 21,
      recorrido: 0,
      favorita: true
    }

    IO.inspect(ruta1)

    recorrido = %Ruta{ruta1 | recorrido: ruta1.recorrido +1}

  end
  def crear_ruta(nombre, ciudad,distancia,recorrido,favorita) do
    %Ruta{
      nombre: nombre,
      ciudad: ciudad,
      distancia: distancia,
      recorrido: recorrido,
      favorita: favorita
    }
  end
end
