defmodule Main do
  def main() do
    convertir_temperatura()
  end

  def convertir_temperatura() do
    nombre = get_nombre()
    celcius = get_celcius()
    kelvin = c_to_kelvin(celcius)
    farenheit = c_to_farenheit(celcius)
    Util.show_message("#{nombre}, la temperatura es:\n
    - #{kelvin} K\n
    - #{farenheit} °F")
  end

  def get_nombre() do
    "Ingrese un nombre de usuario: "
    |> Util.input()
  end

  def get_celcius() do
    Util.input("Ingrese la temperatura en Celcius: ", :float)
  end
  def c_to_kelvin(celcius), do: Float.round(celcius + 273.15 ,1)
  def c_to_farenheit(celcius), do: Float.round((celcius * 9 / 5) + 32 ,1)
end

Main.main()
