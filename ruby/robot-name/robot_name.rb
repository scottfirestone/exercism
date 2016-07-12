require 'securerandom'

class Robot
  attr_reader :name

  @@names = []

  def initialize
    @name = generate_name
  end

  def reset
    @name = generate_name
  end

  def names
    @@names
  end

  private
    def generate_name
      new_name = "#{
        [*"A".."Z"].sample +
        [*"A".."Z"].sample +
        [*0..9].sample.to_s +
        [*0..9].sample.to_s +
        [*0..9].sample.to_s
      }"
      if names.include?(new_name)
        generate_name
      end
      names << new_name
      new_name
    end
end
