defmodule Main do
  def main() do
    pedir_datos()
  end

  def pedir_datos() do
    nombre = "Ingrese un nombre de usuario: " |> Util.input()
    celcius = Util.input("Ingrese la temperatura en Celcius: ", :float)
    kelvin = Float.round((c_to_kelvin(celcius)),1)
    farenheit = Float.round((c_to_farenheit(celcius)),1)
    Util.show_message("#{nombre}, la temperatura es:\n
    - #{kelvin} K\n
    - #{farenheit} °F")
  end

  def c_to_kelvin(celcius), do: celcius + 273.15
  def c_to_farenheit(celcius), do: (celcius * 9 / 5) + 32
end

Main.main()
