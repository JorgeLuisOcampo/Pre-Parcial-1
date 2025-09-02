defmodule Main do
  def main() do
    calcular_salario()
  end

  def calcular_salario() do
    nombre = get_nombre()
    salario = get_salario_base()
    horas = get_horas_extra()
    total = calcular_rendimiento(salario, horas)
    Util.show_message("El salario total de #{nombre} es de $ #{total}")
  end

  def get_nombre() do
    "Ingrese un nombre: "
    |> Util.input()
  end

  def get_salario_base() do
    Util.input("Ingrese el salario: ", :float)
  end

  def get_horas_extra() do
    Util.input("Ingrese el numero de horas extra trabajadas: ", :integer)
  end

  def calcular_rendimiento(salario, horas), do: Float.round(salario/(20 * 8) * 1.5 * horas + salario, 2)
end

Main.main()
