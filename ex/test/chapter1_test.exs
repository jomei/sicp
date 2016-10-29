defmodule Chapter1Test do
	use ExUnit.Case
	doctest Chapter1

	test "ex_3" do
		assert Chapter1.Ex3.run(1,2,3) == 5
	end
end