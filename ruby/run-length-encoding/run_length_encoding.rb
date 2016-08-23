class RunLengthEncoding
  def self.encode(input)
    output = ""
    reverse_input_chars = input.chars.reverse
    current_letter = reverse_input_chars[0]
    current_letter_reps = 0
    reverse_input_chars.each do |char|
      if current_letter == char
        current_letter_reps += 1
      else
        output.prepend(current_letter)
              .prepend(current_letter_reps.to_s)
        current_letter_reps = 1
        current_letter = char
      end
    end
    output.prepend(current_letter)
          .prepend(current_letter_reps.to_s)
          .delete("1")
  end

  def self.decode(input)
    output = ""
    if !("0".."9").include?(input[0])
      current_letter = input[0]
    else
      
    # map through each char
    # if the char is a number, look at the next char,
    # and print the char x the number preceeding it
    # keep going
    # return output
  end
end
