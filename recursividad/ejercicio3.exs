defmodule MayorLista do

  def main do
    [1,5,7,3,6,4]
    |> mayor()
    |> IO.puts()
  end
  def mayor([x]), do: x

  def mayor(lista) do
    mitad = div(length(lista), 2)

    {izq, der} = Enum.split(lista, mitad)

    max(mayor(izq), mayor(der))
  end
end
MayorLista.main()
