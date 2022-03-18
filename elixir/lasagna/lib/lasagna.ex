defmodule Lasagna do
  def expected_minutes_in_oven(), do: 40

  def remaining_minutes_in_oven(minutes_in_oven) do
    expected_minutes_in_oven() - minutes_in_oven
  end

  def preparation_time_in_minutes(layers_added) do
    minutes_to_prepare = 2
    layers_added * minutes_to_prepare
  end

  def total_time_in_minutes(layers_added, minutes_in_oven) do
    preparation_time_in_minutes(layers_added) + minutes_in_oven
  end
  
  def alarm(), do: "Ding!"
end
