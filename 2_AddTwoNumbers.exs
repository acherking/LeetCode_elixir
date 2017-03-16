defmodule LeetCode do
  def addTwoNumbers(numlist1,numlist2,over \\ :false)
  def addTwoNumbers([],[],over) do
    if over, do: [1], else: []
  end
  def addTwoNumbers(numlist1,numlist2,over) do
    n1 =
      case Enum.empty?(numlist1) do
        true  -> 0
        false -> List.last(numlist1)
      end
    n2 =
      case Enum.empty?(numlist2) do
        true  -> 0
        false -> List.last(numlist2)
      end
    o =
      case over do
        true  -> 1
        false -> 0
      end

    sum=n1+n2+o
    over =
      case sum<10 do
        true  -> :false
        false -> :true
      end

    addTwoNumbers(List.delete_at(numlist1,-1),List.delete_at(numlist2,-1),over)++[rem(sum,10)]
  end
end
