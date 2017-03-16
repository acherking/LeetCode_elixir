defmodule LeetCode do
  # 1.Two Sum
  def twosum([], _), do: nil
  def twosum([head|tail], target, recursion\\true) do
    if tail != [] do
      [middle|tail]=tail
      if recursion do
        spawn_link(__MODULE__, :twosum, [[middle|tail],target,true])
      end

      if (head+middle) == target do
        IO.puts Integer.to_string(head)<>"+"<>Integer.to_string(middle)
      end
      twosum([head|tail],target, false)
    end
  end
end
