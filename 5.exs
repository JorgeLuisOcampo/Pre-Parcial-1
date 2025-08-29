defmodule Main do
  def main() do
    pedir_datos()
  end

  def pedir_datos() do
    placa = "Ingrese la placa del vehiculo: " |> Util.input()
    tipo = String.upcase(Util.input("Ingrese el tipo de vehiculo: ", :string))
    peso = Util.input("Ingrese el peso del vehiculo: ", :float)
    tarifa_final = Float.to_string((calcular_tarifa(tipo, peso)), decimals: 0)
    tupla = {placa, tipo, tarifa_final}
    Util.show_message(Kernel.inspect(tupla))
    Util.show_message("Vehiculo #{placa} (#{tipo}) debe pagar $#{tarifa_final}")
  end

  def calcular_tarifa(tipo, peso) do
    cond do
      tipo == "MOTO" -> 5000.0
      tipo == "CARRO" -> 10000.0
      tipo == "CAMION" -> 2000 * peso + 20000
    end
  end
end

Main.main()
