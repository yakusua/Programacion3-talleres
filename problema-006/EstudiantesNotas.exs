
defmodule EstudiantesNotas do
  def main do
    lista = [
      %{nombre: "Ana", nota: 4},
      %{nombre: "Luis", nota: 2},
      %{nombre: "María", nota: 5},
      %{nombre: "Pedro", nota: 1},
      %{nombre: "Sofía", nota: 3}
    ]

    prom = promedio(lista_notas)

    IO.puts("Promedio: #{inspect(prom)}")
    IO.puts("Encima del promedio: #{inspect(estudiantes_por_encima_del_promedio(lista_notas, prom))}")
    IO.puts("Debajo del promedio: #{inspect(estudiantes_por_debajo_del_promedio(lista_notas, prom))}")
    IO.puts("Mín/Máx: #{inspect(nota_min_max(lista_notas))}")
    IO.puts("Aprobados (>= 3): #{aprobados(lista_notas)}")

    # Probamos también el caso de lista vacía
    IO.puts("--- Caso lista vacía ---")
    IO.puts("Promedio []: #{promedio([])}")
    IO.puts("Aprobados []: #{aprobados([])}")
  end

  defp promedio([]), do: 0
  defp promedio(lista), do
    Enum.map(lista,)
  end

  defp estudiantes_por_encima_del_promedio(lista, promedio) do
    Enum.filter(lista, fn nota -> nota > promedio end)
  end

  defp estudiantes_por_debajo_del_promedio(lista, promedio) do
    Enum.filter(lista, fn nota -> nota < promedio end)
  end

  defp nota_min_max([]), do: {nil, nil}
  defp nota_min_max(lista), do: Enum.min_max(lista)

  defp aprobados(lista) do
    Enum.count(lista, fn nota -> nota >= 3 end)
  end

end

EstudiantesNotas.main()
