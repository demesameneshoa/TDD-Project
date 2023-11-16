require 'minitest/autorun'
require_relative 'solver'

class TestSolver < Minitest::Test
  def setup
    @solver = Solver.new
  end

 # Test for the reverse method
 def test_reverse
    assert_equal 'olleh', @solver.reverse('hello')
  end


end