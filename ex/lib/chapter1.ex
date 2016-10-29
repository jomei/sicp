defmodule Chapter1 do
	def ex_3(a, b, c) do
		[a, b, c]
		|> Enum.sort
		|> Enum.reverse
		|> Enum.take(2)
		|> (fn([x, y])-> x + y end).()
	end
end