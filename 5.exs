defmodule Main do
  def main() do
    registro_peaje()
  end

  def registro_peaje() do
    placa = get_placa()
    tipo = get_tipo_vehiculo()
    peso = get_peso()
    tarifa_final = Float.to_string((calcular_tarifa(tipo, peso)), decimals: 0)
    tupla = {placa, tipo, tarifa_final}
    Util.show_message(Kernel.inspect(tupla))
    Util.show_message("Vehiculo #{placa} (#{tipo}) debe pagar $#{tarifa_final}")
  end

  def get_peso() do
    Util.input("Ingrese el peso del vehiculo: ", :float)
  end

  def get_placa() do
    "Ingrese la placa del vehiculo: "
    |> Util.input()
  end

  def get_tipo_vehiculo() do
    String.upcase(Util.input("Ingrese el tipo de vehiculo: ", :string))
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
