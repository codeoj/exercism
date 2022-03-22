defmodule FreelancerRates do
  @daily 8.0
  @monthly 22

  def daily_rate(hourly_rate), do: hourly_rate * @daily

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * discount / 100
  end

  def monthly_rate(hourly_rate, discount) do
    (daily_rate(hourly_rate) * @monthly)
    |> apply_discount(discount)
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_discount =
      daily_rate(hourly_rate)
      |> apply_discount(discount)

    (budget / daily_discount)
    |> Float.floor(1)
  end
end
