defmodule Main do
  def main() do
    cntrl_inventario()
  end

  def cntrl_inventario() do
    titulo = get_titulo()
    cantidad = get_cant_libros()
    precio = get_precio()
    valor_inventario = calcular_precio(cantidad, precio)
    Util.show_message("El libro #{titulo} tiene #{cantidad} unidades, con un valor total \nde $#{valor_inventario}")
  end

  def get_titulo() do
    "Ingrese el titulo del libro: "
    |> Util.input()
  end

  def get_cant_libros() do
    Util.input("Ingrese la cantidad de libros: ", :integer)
  end

  def get_precio() do
    Util.input("Ingrese el precio unitario del libro: ", :float)
  end

  def calcular_precio(cantidad, precio), do: Float.round(cantidad * precio,2)
end

Main.main()
