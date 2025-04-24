require "test_helper"
require "math_utils"

class MathUtilsTest < ActiveSupport::TestCase
  test "fibonacci returns correct result" do
    assert_equal [0, 1, 1, 2, 3], MathUtils.fibonacci(5)
    assert_equal [0, 1, 1, 2, 3, 5, 8], MathUtils.fibonacci(7)
  end

  test "fibonacci raises error on invalid input" do
    assert_raises(ArgumentError) { MathUtils.fibonacci(0) }
    assert_raises(ArgumentError) { MathUtils.fibonacci("five") }
  end

  test "factorials returns correct values" do
    assert_equal [1, 1, 2, 6, 24], MathUtils.factorials(5)
  end

  test "factorials raises error on invalid input" do
    assert_raises(ArgumentError) { MathUtils.factorials(-1) }
    assert_raises(ArgumentError) { MathUtils.factorials("ten") }
  end
end