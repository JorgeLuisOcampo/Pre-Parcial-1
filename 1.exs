# Integrantes:  Jorge Luis Ocampo Ocampo, Santiago Vallejo Botero

defmodule Main do
  def main() do
    app_combustible()
  end

  def app_combustible() do
    nombre = get_nombre()
    km = get_distancia()
    lts = get_lts()
    rendimiento =(calcular_rendimiento(km, lts))
    Util.show_message("#{nombre}, el rendimiento es de #{rendimiento} kms por litro")
  end

  def get_nombre() do
    "Ingrese un nombre: "
    |> Util.input()
  end

  def get_distancia() do
    Util.input("Ingrese distancia recorrida (km): ", :float)
  end

  def get_lts() do
    Util.input("Ingrese el combustible consumido (Lts): ", :float)
  end

  def calcular_rendimiento(km, lts), do:  Float.round(km/lts,2)
end

Main.main()
