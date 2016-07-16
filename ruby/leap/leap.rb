class Year
  def self.leap?(year)
    year % 4 == 0 && (year % 100 != 0  || year % 400 == 0)
  end
end

class BookKeeping
  VERSION = 2
end
