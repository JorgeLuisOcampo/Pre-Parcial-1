defmodule Main do
  def main() do
    pedir_datos()
  end

  def pedir_datos() do
    nombre = "Ingrese un nombre: " |> Util.input()
    salario = Util.input("Ingrese el salario: ", :float)
    horas = Util.input("Ingrese el numero de horas extra trabajadas: ", :integer)
    total = Float.round((calcular_rendimiento(salario, horas)),2)
    Util.show_message("El salario total de #{nombre} es de $ #{total}")
  end

  def calcular_rendimiento(salario, horas), do: salario/(20 * 8) * 1.5 * horas + salario
end

Main.main()
