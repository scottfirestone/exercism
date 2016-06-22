class Hamming
  def self.compute(strand_one, strand_two)
    distance = 0
    strand_one.split.each.with_index do |nucleotide, i|
      if nucleotide == strand_two[i]
        distance += 1
      end
    end
    distance
  end
end
