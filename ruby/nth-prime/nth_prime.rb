class Prime
  def self.nth(num)
    raise ArgumentError if num < 1

    (2..Float::INFINITY)
      .lazy
      .select { |n| prime?(n) }
      .first(num)
      .last
  end

  def self.prime?(num)
    (2..num / 2).none? { |d| num.modulo(d).zero? }
  end
end
