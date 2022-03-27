defmodule KitchenCalculator do
  @cup_mL 240
  @fluid_once_mL 30
  @teaspoon_mL 5
  @tablespoon_mL 15

  def get_volume({_unit, volume}), do: volume

  def to_milliliter({:milliliter, _volume}), do: {:milliliter, _volume}
  def to_milliliter({:cup, volume}), do: {:milliliter, volume * @cup_mL}
  def to_milliliter({:fluid_ounce, volume}), do: {:milliliter, volume * @fluid_once_mL}
  def to_milliliter({:teaspoon, volume}), do: {:milliliter, volume * @teaspoon_mL}
  def to_milliliter({:tablespoon, volume}), do: {:milliliter, volume * @tablespoon_mL}

  def from_milliliter({:milliliter, _volume}, :milliliter), do: {:milliliter, _volume}
  def from_milliliter({:milliliter, volume}, :cup), do: {:cup, volume / @cup_mL}
  def from_milliliter({:milliliter, volume}, :fluid_ounce), do: {:fluid_ounce, volume / @fluid_once_mL}
  def from_milliliter({:milliliter, volume}, :teaspoon), do: {:teaspoon, volume / @teaspoon_mL}
  def from_milliliter({:milliliter, volume}, :tablespoon), do: {:tablespoon, volume / @tablespoon_mL}

  def convert(volume_pair, unit) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end