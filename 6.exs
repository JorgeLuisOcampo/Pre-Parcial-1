defmodule Main do
  def main() do
    pedir_datos()
  end

  def pedir_datos() do
    nombre = "Ingrese el nombre del cliente: " |> Util.input()
    peso = Util.input("Ingrese el peso del paquete en kg: ", :float)
    tipo = String.upcase(Util.input("Ingresar el tipo de envío (Economico, Express, Internacional).", :string))
    costo_total = Float.to_string((calcular_tarifa(tipo, peso)), decimals: 0)
    tupla = {nombre, peso, tipo, costo_total}
    Util.show_message(Kernel.inspect(tupla))
  end

  def calcular_tarifa(tipo, peso) do
    case tipo do
      "ECONOMICO" -> 5000.0 * peso
      "EXPRESS" -> 8000.0 * peso
      "INTERNACIONAL" ->
        if peso <= 5 do
          15000.0 * peso
        else
          12000.0 * peso
        end
    end
  end
end

Main.main()
