class Phrase
  attr_reader :phrase, :word_count

  def initialize(phrase)
    @word_count = Hash.new(0)
    @phrase = phrase
    arrange_words
  end

  private
    def arrange_words
      phrase.downcase.gsub(/\W/, ' ').split.each { |word| word_count[word] += 1 }
    end
end
