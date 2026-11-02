
defmodule Ventas do
  def main do
    ventas = cargar_ventas()



  end

  def cargar_ventas do

    [
      %{producto: "Café", categoria: "Bebidas", cantidad: 3},
      %{producto: "Té", categoria: "Bebidas", cantidad: 1},
      %{producto: "Jugo", categoria: "Bebidas", cantidad: 6},
      %{producto: "Pan", categoria: "Panadería", cantidad: 5},
      %{producto: "Croissant", categoria: "Panadería", cantidad: 2},
      %{producto: "Torta", categoria: "Panadería", cantidad: 1},
      %{producto: "Galleta", categoria: "Panadería", cantidad: 3}
    ]

  end

  #obtener la lista de productos que pertenecen a una categoria especifica
  defp filtrar_categoria(lista, categoria), do: Enum.filter(lista, &(&1.categoria == categoria))

  #obtener los nombres de los productos
  defp obtener_nombre (ventas) do
    Enum.map(ventas, fn venta -> venta.producto end)
  end

  defp categorias (ventas) do
    ventas
    |> Enum.map(&(1&.categoria))
    |> Enum.uniq()
  end
  defp agrupar_productos_por_categoria(ventas) do
    Enum.group_by(ventas, &(&1.categoria))
  end
  defp ventas_por_categoria(ventas) do
    Enum.group_by(ventas, fn venta -> venta.categoria end, fn venta -> venta.cantidad end)
    |> Enum.map(fn {categoria, cantidades} -> {categoria, Enum.sum(cantidades)} end)
  end

  defp sumar_unidades_por_categoria(ventas) do
    ventas
    |> agrupar_productos_por_categoria()
    |> Map.new(fn {categoria, productos} ->
    %{categoria, Enum.sum(Enum.map(productos, &(&1.cantidad)))}
      end )
  end
end

EntradaReales.main()
