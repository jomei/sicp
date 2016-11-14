defmodule Chapter2 do
	import Structs

	defmodule Ex2 do
		def run(p1, p2) do
			Structs.Segment.midpoint(Structs.Segment.cons(p1, p2))
		end
	end
end