class Squares
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    (0..@number).reduce(:+)**2
  end

  def sum_of_squares
    (0..@number).reduce(0) do |result, i|
       result + i**2
     end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

class BookKeeping
  VERSION = 3
end
