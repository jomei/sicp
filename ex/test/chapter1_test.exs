defmodule Chapter1Test do
	use ExUnit.Case
	doctest Chapter1

	test "ex_3" do
		assert Chapter1.Ex3.run(1,2,3) == 5
	end

	test "ex_8" do
		assert Chapter1.Ex8.run(9) == 3.0
	end
end