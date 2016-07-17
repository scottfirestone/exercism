class Grains
  def self.square(squares)
    if squares <= 2
      squares
    else
      2 ** (squares - 1)
    end
  end

  def self.total
    (3..64).reduce(3) do |sum, num|
      sum += (2 ** (num - 1))
    end
  end
end
