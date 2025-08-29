defmodule Util do
  @moduledoc """
  Utility module for displaying messages using java.
  """

  @doc """
    Displays a message using a Java dialog.
  """
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end
  
  def input(data) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", data])
    |> elem(0)
    |> String.trim()
  end

  def input(data, :string) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", data])
    |> elem(0)
    |> String.trim()
  end

  def input(message, :integer) do
    try do
      message
      |> input(:string)
      |> String.to_integer()
    rescue
      ArgumentError ->
        Util.show_message("Error: Input is not a valid integer.")

      message
      |> input(:integer)
    end
  end

  def input(message, :float) do
    try do
      message
      |> input(:string)
      |> String.to_float()
    rescue
      ArgumentError ->
        Util.show_message("Error: Input is not a valid float.")

      message
      |> input(:float)
    end
  end
end
