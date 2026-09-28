defmodule Ejercicio000 do
  def main do



  end

  #punto 1
  def punto1 (lista) do
    lista
      |> Enum.map(&(String.upcase(&1)))
      |> Enum.filter(fn w -> String.length(w) > 4 end)
      |> Enum.map(fn cadena -> String.reverse(cadena) end)
      |> Enum.sort()
      |> Enum.take(3)
      |> Enum.join(" - ")

    IO.puts( procesar(["Elixir", "es", "un", "lenguaje", "funcional", "muy", "poderoso"]) )

  end

  def punto2 () do
        personas = [
      %{nombre: "Antonio", edad: 23},
      %{nombre: "Luis", edad: 30},
      %{nombre: "Marta", edad: 19},
      %{nombre: "Pedro", edad: 40},
      %{nombre: "Andrés", edad: 28},
      %{nombre: "Ana", edad: 35}
    ]

    resultado =
      personas
      |> Enum.filter(fn %{nombre: nombre, edad: edad} ->
        edad >= 21 and (nombre |> String.downcase() |> String.starts_with?("a"))
      end)
      |> Enum.map(fn %{nombre: nombre} -> String.upcase(nombre) end)
      |> Enum.sort_by(&String.length(&1))
      |> Enum.join(" | ")

    IO.puts(resultado)
  end

  def punto3 () do
    numeros = Enum.to_list(1..15)

    resultado =
      numeros
      |> Enum.filter(&(rem(&1, 3) == 0))
      |> Enum.map(&(&1 + 1))
      |> Enum.reduce({0, 0}, fn x, {suma, conteo} -> {suma + x, conteo + 1} end)
      |> then(fn {suma, conteo} -> suma / conteo end)

    IO.puts("Salida: #{resultado}")
  end



end

Ejercicio000.main()
