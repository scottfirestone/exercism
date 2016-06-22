class Complement
  def self.of_dna(strand)
    strand.chars.map do |nucleotide|
      case nucleotide
      when 'C'
        'G'
      when 'G'
        'C'
      when 'T'
        'A'
      when 'A'
        'U'
      else
        return ''
      end
    end.join
  end
end

class BookKeeping
  VERSION = 4
end
