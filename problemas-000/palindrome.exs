defmodule Palindrome do
  def main do
    palabra = "Ingrese la palabra: "
      |> Util.ingresar(:text)

    es_o_no = palabra
      |> String.replace(" ", "")
      |> is_palindrome()

    if es_o_no do
      IO.puts("Es un palíndromo !!!!!!!!!")
    else
      IO.puts("No es :(")
    end
  end

  def is_palindrome(text) do
    text == String.reverse(text)
  end
end

Palindrome.main()
