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
	

	defmodule Ex16 do
		def fast_expt(num, pow) do
			iter num, pow, 1
		end

		defp iter(_num, pow, acc) when pow == 0, do: acc

		defp iter(num, pow, acc) do
			if rem(pow, 2) == 0 do
				iter(num, div(pow, 2), acc * num)
			else
				iter(num, pow - 1, num * acc)
			end
		end
	end

	defmodule Ex31 do
		def product(a, b, fun, next) do
			product_iter(a, b, fun, next)
		end

		defp product_iter(a, b, _fun, _next) when a > b, do: 1

		defp product_iter(a, b, fun, next) do
			fun.(a) *
				product_iter(next.(a), b, fun, next)
		end

		def factorial(n) do
			product(1, n, &(&1), &(&1 + 1))
		end
	end

	defmodule Ex37 do
		def run(k) do
			n_fn = fn _i -> 1  end
			cont_frac(n_fn, n_fn, k)
		end

		def cont_frac(n_fn, d_fn, k) do
			cont_frac_iter(n_fn, d_fn, k , 1)
		end

		defp cont_frac_iter(_n_fn, d_fn, k, iter) when k == iter, do: d_fn.(iter)

		defp cont_frac_iter(n_fn, d_fn, k, iter) do
			d_fn.(iter - 1) + n_fn.(iter) / cont_frac_iter(n_fn, d_fn, k, iter + 1)
		end
	end

	defmodule Ex38 do
		def eiler(k) do
			n_fn = fn _i -> 1 end
			d_fn = fn 
				(i) when rem(i - 1, 3) == 0 -> div(i - 1, 3) * 2
				(_i) -> 1
			end

			Ex37.cont_frac n_fn, d_fn, k
		end
	end

	defmodule Ex39 do
		def tangens(x, k) do
			n_fn = fn 
				(1) -> -1 * x
				(_i) -> -1 * x * x 
		 	end

		 	d_fn = fn
		 		1 ->  1
		 		i -> 2 * i - 1
		 	end

		 	Ex37.cont_frac n_fn, d_fn, k
		end
	end

	defmodule Ex41 do
		def double(f, arg) do
			arg
			|> (f).()
			|> (f).()
		end

		def run do
			double(&(&1 + 1), 1)
		end
	end

	defmodule Ex42 do
		def compose(f1, f2) do
			fn arg -> f1.(f2.(arg))  end
		end

		def run(x) do
			f1 = &(&1 * &1)
			f2 = &(&1 + 1)
			compose(f1, f2).(x)
		end
	end

	defmodule Ex43 do
		def repeat(f, n) do
			repeat_iter f, f, n, 1
		end

		defp repeat_iter(_start_f, f, n, count) when n == count, do: f

		defp repeat_iter(start_f, f, n, count) do
			repeat_iter(start_f, Ex42.compose(start_f, f), n, count + 1)
		end

		def run(x) do
			f = &(&1 * &1)
			repeat(f, 2).(x)
		end
	end

	defmodule Ex44 do
		def smooth(f) do
			fn x, dx -> (f.(x - dx) + f.(x) + f.(x + dx)) / 3  end
		end

		def n_smooth(f, n) do
			Ex43.repeat(smooth(f), n)
		end
	end

	defmodule Ex46 do
		def iterative_improve(is_enough_fn, improve_fn) do
			fn x ->  
				improve_iter(is_enough_fn, improve_fn, x)
			end
		end

		defp improve_iter(is_enough_fn, improve_fn, x) do
			improved = improve_fn.(x)
			if is_enough_fn.(improved) do
				improved
			else
				improve_iter(is_enough_fn, improve_fn, improved)
			end
		end
	end
end