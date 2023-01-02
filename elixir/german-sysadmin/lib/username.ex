defmodule Username do
  def sanitize([]), do: []
  def sanitize([character | rest]) do
    char =
      case character do
        ?ä -> 'ae'
        ?ö -> 'oe'
        ?ü -> 'ue'
        ?ß -> 'ss'
        char when (char >= ?a and char <= ?z) or char == ?_ -> [char]
        _ -> []
      end
    char ++ sanitize(rest)
  end
end
