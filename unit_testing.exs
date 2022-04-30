ExUnit.start			# set up test runner

defmodule MyTest do

	use ExUnit.Case		#use requires a module and sets up macros.

	test 'simple test' do
		assert 1 + 1 == 2	#Elixir doesn't need assert_equal, etc. Will do comparison on its own.

	end

	test "refute is opposite of assert" do		#test macro accepts string as test name
	refute 1 + 1 == 3

	end
	
	test :assert_raise do				# test macro also accepts an atom.
		assert_raise ArithmeticError, fn ->
			1 + "x"
		end
	end

	test "assert_in_delta asserts that value1 and value2 differ by 
less than delta." do
	assert_in_delta 1,  # actual
			5,  # expected
			6   # delta
	end
end
