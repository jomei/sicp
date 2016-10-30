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

	defmodule Ex11 do
		def run_rec(n) do
			rec(n)
		end

		defp rec(n) when n >= 3 do
			rec(n - 1) + rec(n - 2) + rec(n - 3)
		end

		defp rec(n) when n < 3, do: n

		def run_iter(n) when n < 3 , do: n

		def run_iter(n) do
			iter(2, 1, 0, n)
		end

		#c - 3, b -2, a - 1	
		defp iter(_c, _b, a, count) when count == 0, do: a

		defp iter(c, b, a, count) do
			iter(a + b + c, c, b, count - 1)
		end
	end

	defmodule Ex12 do
		# pascal triangle
		# n - line index
		# all indexes starts with 0
		def run(n) do
			Enum.map(0..n, &(item(n, &1)))
		end

		# pascal triangle item
		# n - line index, k - position index
		def item(n, k) when k == 0 or k == n, do: 1

		def item(n, k), do: item(n - 1, k - 1) + item(n - 1, k)
	end
	
end