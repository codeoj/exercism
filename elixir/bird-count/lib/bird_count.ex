defmodule BirdCount do
  def today([]), do: :nil
  def today([hd | _tl]), do: hd

  def increment_day_count([]), do: [1]
  def increment_day_count([hd | tl]), do: [hd + 1 | tl]
  
  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _tl]), do: true
  def has_day_without_birds?([_hd | tl]), do: has_day_without_birds?(tl)

  def total([]), do: 0
  def total([hd | tl]), do: hd + total(tl)

  def busy_days([]), do: 0
  def busy_days([hd | tl]) when hd >= 5, do: 1 + busy_days(tl)
  def busy_days([_hd | tl]), do: busy_days(tl)
end
