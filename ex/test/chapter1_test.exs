defmodule Chapter1Test do
	use ExUnit.Case
	doctest Chapter1

	test "ex_3" do
		assert Chapter1.Ex3.run(1,2,3) == 5
	end

	test "ex_8" do
		assert Chapter1.Ex8.run(9) == 3.0
	end

	test "ex_11 recursion" do
		assert Chapter1.Ex11.run_rec(5) == 11
	end

	test "ex_11 iteration" do
		assert Chapter1.Ex11.run_iter(5) == 11
	end

	test "ex_12" do
		assert Chapter1.Ex12.item(4, 1) == 4
		assert Chapter1.Ex12.run(3) == [1, 3, 3, 1]
	end

	test "ex_16" do
		assert Chapter1.Ex16.fast_expt(3, 3) == 27
	end

	test "ex_31" do
		assert Chapter1.Ex31.factorial(3) == 6
	end

	test "ex_37" do
		assert Chapter1.Ex37.run(3) == 1.5
	end

	test "ex_38" do
		assert Chapter1.Ex38.eiler(6) == 2.75
	end

	test "ex_39" do
		assert Chapter1.Ex39.tangens(0, 10)
	end

	test "ex_41" do
		assert Chapter1.Ex41.run() == 3
	end
end