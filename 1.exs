# Integrantes:  Jorge Luis Ocampo Ocampo, Santiago Vallejo Botero

defmodule Main do
  def main() do
    pedir_datos()
  end

  def pedir_datos() do
    nombre = "Ingrese un nombre: " |> Util.input()
    km = Util.input("Ingrese distancia recorrida (km): ", :float)
    lts = Util.input("Ingrese el combustible consumido (Lts): ", :float)
    rendimiento = Float.round((calcular_rendimiento(km, lts)),2)
    Util.show_message("#{nombre}, el rendimiento es de #{rendimiento} kms por litro")
  end

  def calcular_rendimiento(km, lts), do: km/lts
end

Main.main()
