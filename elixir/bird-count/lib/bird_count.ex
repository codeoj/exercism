defmodule BirdCount do
  def today(list), do: Enum.at(list, 0, :nil)

  def increment_day_count([]), do: [1]
  def increment_day_count([hd | tl]), do: [hd + 1 | tl]

  def has_day_without_birds?(list), do: Enum.member?(list, 0)

  def total([]), do: 0
  def total(list), do: Enum.reduce(list, &+/2)

  def busy_days([]), do: 0
  def busy_days([hd | tl]) when hd >= 5, do: 1 + busy_days(tl)
  def busy_days([_hd | tl]), do: busy_days(tl)
end
