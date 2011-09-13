require 'helper'

describe Integer do

  before do
    @fibonacci_sequence_for_13 = [0, 1, 1, 2, 3, 5, 8, 13]
    @fibonacci_sequence_for_55 = @fibonacci_sequence_for_13 + [21, 34, 55]
  end
  
  describe "#fibonacci" do
    it "should return the fibonacci sequence of a given number" do
      13.fibonacci.must_equal @fibonacci_sequence_for_13
      55.fibonacci.must_equal @fibonacci_sequence_for_55
    end
  end

  describe "#closest_fibonacci" do
    it "should return the closest Fibonacci number smaller than the given integer" do
      15.closest_fibonacci.must_equal 13
      13.closest_fibonacci.must_equal 13
      56.closest_fibonacci.must_equal 55
      55.closest_fibonacci.must_equal 55
      54.closest_fibonacci.must_equal 34
    end
  end
end
