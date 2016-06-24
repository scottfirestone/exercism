class Pangram
  def self.is_pangram?(str)
    alphabet = Alphabet.new.alphabet
    str.downcase.gsub(/[^a-z0-9\s]/i, '').chars.each do |char|
      alphabet.delete(char) if alphabet.include?(char)
    end
    alphabet.count == 0
  end
end

class Alphabet
  attr_reader :alphabet
  def initialize
    @alphabet = [
      "a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
      "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
      "u", "v", "w", "x", "y", "z"
    ]
  end
end

class BookKeeping
  VERSION = 2
end
