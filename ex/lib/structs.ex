defmodule Structs do
	defmodule Pair do
		defstruct [:head, :tail]

		def cons(head, tail) do
			struct(Pair, [head: head, tail: tail])
		end

		def car(%Pair{} = p) do
			p.head
		end

		def cdr(%Pair{} = p) do
			p.tail
		end
	end

	defmodule Segment do
		def cons(%Pair{} = start_point, %Pair{} = end_point) do
			struct(Pair, [head: start_point, tail: end_point])
		end

		def midpoint(%Pair{} = seg) do
			x = (Pair.car(Pair.car(seg)) + Pair.car(Pair.cdr(seg))) / 2
			y = (Pair.cdr(Pair.car(seg)) + Pair.cdr(Pair.cdr(seg))) / 2
			struct(Pair, [head: x, tail: y])
		end
	end
end
