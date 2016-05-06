class CircularBuffer
  attr_reader :write_index, :read_index

  def initialize(size)
    @buffer = Array.new(size)
    @write_index = 0
    @read_index = 0
  end

  def read
    # require 'pry'; binding.pry
    if @buffer.all? { |element| element == nil }
      raise BufferEmptyException
    else
      # require 'pry'; binding.pry
      removed = @buffer.unshift[read_index]
      @buffer[read_index] = nil
      @read_index = (@read_index + 1) % @buffer.size
      removed
    end
  end

  def write(data)
    #if every element in buffer is not nil, then raise exception
    if data
      if @buffer.include?(nil)
        @buffer[write_index] = data
        @write_index += 1
      else
        raise BufferFullException
      end
    end
  end

  def clear
    # require 'pry'; binding.pry
    @buffer = @buffer.map { |e| nil}
    @write_index = 0
  end

  def write!(data)
    @buffer[read_index] = data
    @read_index += 1
  end

  class BufferEmptyException < Exception
  end

  class BufferFullException < Exception
  end
end
