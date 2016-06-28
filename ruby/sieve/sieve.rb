class Sieve
  attr_reader :limit, :num_collection

  def initialize(limit)
    @limit = limit
    @num_collection = {}
  end

  def primes
    (2..limit).each do |num|
      set_primes(num)
    end
    num_collection.map {|k, v| v == "prime" ? k : nil }.compact
  end

  private
    def set_primes(num)
      if !num_collection[num]
        num_collection[num] = "prime"
        set_composites(num)
      end
    end

    def set_composites(num)
      product = 0
      multiplier = 2
      until product > limit
        product = num * multiplier
        num_collection[product] = "composite"
        multiplier += 1
      end
    end
end
