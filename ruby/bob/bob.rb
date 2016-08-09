class Bob
  attr_reader :remark

  def hey(remark)
    @remark = remark
    if yell?
      "Whoa, chill out!"
    elsif question?
      "Sure."
    elsif !has_letters? && !has_numbers?
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end

  private
    def yell?
      has_letters? && remark == remark.upcase
    end

    def question?
      remark[-1] == "?"
    end

    def has_letters?
      remark.chars.any? { |char| char =~ /[[:alpha:]]/ }
    end

    def has_numbers?
      remark.chars.any? { |char| char =~ /[[:digit:]]/ }
    end
end
