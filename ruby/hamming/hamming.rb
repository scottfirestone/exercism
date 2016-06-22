class Hamming
  def self.compute(strand_one, strand_two)
    if strand_one.length != strand_two.length
      raise ArgumentError
    end
    distance = 0
    strand_one.chars.each.with_index do |nucleotide, i|
      if nucleotide != strand_two[i]
        distance += 1
      end
    end
    distance
  end
end

class BookKeeping
  VERSION = 3
end
