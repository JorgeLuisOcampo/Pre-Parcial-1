defmodule Main do
  def main() do
    pedir_datos()
  end

  def pedir_datos() do
    titulo = "Ingrese el titulo del libro: " |> Util.input()
    cantidad = Util.input("Ingrese la cantidad de libros: ", :integer)
    precio = Util.input("Ingrese el precio unitario del libro: ", :float)
    valor_inventario = Float.round((calcular_precio(cantidad, precio)),2)
    Util.show_message("El libro #{titulo} tiene #{cantidad} unidades, con un valor total \nde $#{valor_inventario}")
  end

  def calcular_precio(cantidad, precio), do: cantidad * precio
end

Main.main()
