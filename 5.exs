defmodule Main do
  def main() do
    pedir_datos()
  end

  def pedir_datos() do
    placa = "Ingrese la placa del vehiculo: " |> Util.input()
    tipo = Util.input("Ingrese el tipo de vehiculo: ", :string)
    peso = Util.input("Ingrese el peso del vehiculo: ", :float)
    valor_tarita = Float.round((calcular_rendimiento(km, lts)),2)
    Util.show_message("#{nombre}, el rendimiento es de #{rendimiento} kms por litro")
  end

  def calcular_rendimiento(km, lts), do: km/lts
end

Main.main()
