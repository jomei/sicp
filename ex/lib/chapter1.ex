defmodule Chapter1 do
	defmodule Ex3 do
		def run(a, b, c) do
			[a, b, c]
			|> Enum.sort
			|> Enum.reverse
			|> Enum.take(2)
			|> (fn([x, y])-> x + y end).()
		end
	end

	defmodule Ex8 do
		# sqrt
		def run(x) do
			Float.round(iter(1, x),2)
		end
		
		defp iter(guess, x) do
			if good?(guess, x) do
				guess
			else
				iter(improve(guess, x), x)
			end
		end

		defp improve(guess, x) do
			new_guess = x / guess
			avearge guess, new_guess
		end

		defp good?(guess, x) do
			abs(guess * guess - x) < 0.01
		end
		defp avearge(x, y), do: (x + y) / 2
	end


	
end