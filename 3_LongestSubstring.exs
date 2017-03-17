defmodule LeetCode do
  def longistOfSubString(string) do
    list = String.to_charlist(string)
    _longistSubString(list)
  end
  defp _longistSubString(list, length\\0)
  defp _longistSubString([], length), do: length
  defp _longistSubString([head|tail], length) do
    hlength = _HeadSubString([head|tail], [], 0)
    length =
      case hlength>length do
        true  -> hlength
        false -> length
      end
    _longistSubString(tail, length)
  end
  defp _HeadSubString([], _, length), do: length
  defp _HeadSubString([head|tail], substr, length) do
    if Enum.find(substr, fn(x) -> x==head end) do
      length
    else
      length = length + 1
      substr = List.insert_at(substr, -1, head)
      _HeadSubString(tail, substr, length)
    end
  end

end
