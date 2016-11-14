defmodule Chapter2Test do
	use ExUnit.Case
	doctest Chapter2

	import Structs

	test "ex_2" do
		p1 = Structs.Pair.cons(0, 0)
		p2 = Structs.Pair.cons(1, 1)
		assert Chapter2.Ex2.run(p1 , p2) == %Structs.Pair{head: 0.5, tail: 0.5}
	end
end