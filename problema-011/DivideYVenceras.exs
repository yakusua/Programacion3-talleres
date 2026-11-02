defmodule DivideYVenceras do
  def main do
    lista = [1,3,7,8,2]
    max_num = max_number(lista)
  end

  def max_number([]), do: {:error, "La lista está vacía"}

  def max_number([x]), do: x

  def max_number(list) do
    mid = div(length(list), 2)
    {left, right} = Enum.split(list, mid)


    max_left = max_number(left)
    max_right = max_number(right)


    max(max_left, max_right)
  end

end
