defmodule Aereolinea do
  def main do
    vuelos = [
     %{
       codigo: "AV201",
       aerolinea: "Avianca",
       origen: "BOG",
       destino: "MDE",
       duracion: 45,
       precio: 180_000,
       pasajeros: 120,
       disponible: true
     },
     %{
       codigo: "LA305",
       aerolinea: "Latam",
       origen: "BOG",
       destino: "CLO",
       duracion: 55,
       precio: 210_000,
       pasajeros: 98,
       disponible: true
     },
     %{
       codigo: "AV410",
       aerolinea: "Avianca",
       origen: "MDE",
       destino: "CTG",
       duracion: 75,
       precio: 320_000,
       pasajeros: 134,
       disponible: false
     },
     %{
       codigo: "VV102",
       aerolinea: "Viva Air",
       origen: "BOG",
       destino: "BAQ",
       duracion: 90,
       precio: 145_000,
       pasajeros: 180,
       disponible: true
     },
     %{
       codigo: "LA512",
       aerolinea: "Latam",
       origen: "CLO",
       destino: "CTG",
       duracion: 110,
       precio: 480_000,
       pasajeros: 76,
       disponible: false
     },
     %{
       codigo: "AV330",
       aerolinea: "Avianca",
       origen: "BOG",
       destino: "CTG",
       duracion: 135,
       precio: 520_000,
       pasajeros: 155,
       disponible: true
     },
     %{
       codigo: "VV215",
       aerolinea: "Viva Air",
       origen: "MDE",
       destino: "BOG",
       duracion: 50,
       precio: 130_000,
       pasajeros: 190,
       disponible: true
     },
     %{
       codigo: "LA620",
       aerolinea: "Latam",
       origen: "BOG",
       destino: "MDE",
       duracion: 145,
       precio: 390_000,
       pasajeros: 112,
       disponible: true
     },
     %{
       codigo: "AV505",
       aerolinea: "Avianca",
       origen: "CTG",
       destino: "BOG",
       duracion: 120,
       precio: 440_000,
       pasajeros: 143,
       disponible: false
     },
     %{
       codigo: "VV340",
       aerolinea: "Viva Air",
       origen: "BAQ",
       destino: "BOG",
       duracion: 85,
       precio: 160_000,
       pasajeros: 175,
       disponible: true
     }
    ]

    filtrar_vuelos_disponibles(vuelos)
      |> IO.puts()

  end

  @doc"""
  Filtra los vuelos disponibles y retorna solo sus códigos, ordenados alfabéticamente.
  """
  def filtrar_vuelos_disponibles (lista) do
  # Ejemplo resultado esperado: ["AV201", "AV330", "LA305", "LA620", "VV102", "VV215", "VV340"]
      lista
        |> Enum.filter( fn %{disponible: disponible} -> disponible end)
        |> Enum.map(fn %{codigo: codigo} -> codigo end)
        |> Enum.sort()
  end
end
Aereolinea.main()
