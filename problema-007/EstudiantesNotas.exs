
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
  defp filtrar_categoria (lista,categoria), do : Enum.filter(lista,&(&1.categoria == categoria)) end


  #obtener los nombres de los productos
  defp obtener_nombre (ventas) do
    Enum.map(ventas, fn venta -> venta.producto end)
  end

  defp categorias (ventas) do
    ventas
    |> Enum.map(&(1&.categoria))
    |> Enum.uniq
  end
  defp agrupar_productos_por_categoria(venta), do: Enum.grup_by(&(1.producto))
end

EntradaReales.main()
