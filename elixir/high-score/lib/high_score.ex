defmodule HighScore do
  @default 0

  def new(), do: Map.new()

  def add_player(scores, name, score \\ @default), do: Map.put(scores, name, score)

  def remove_player(scores, name), do: Map.delete(scores, name)

  def reset_score(scores, name), do: Map.put(scores, name, @default)

  def update_score(scores, name, score) do
    Map.update(scores, name, score, &(&1 + score))
  end

  def get_players(scores), do: Map.keys(scores)
end
