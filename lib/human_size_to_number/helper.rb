class String
  
  # Raised when argument +size+ param given to the helpers is invalid and
  # the option :raise is set to +true+.
  class InvalidSizeStringError < StandardError
    attr_accessor :size_string
    def initialize(size_string)
      @size_string = size_string
    end
  end
  
  def human_size_to_number(options={})
    size, unit = self.scan(/(\d*\.?\d+)\s?(Bytes?|KB|MB|GB|TB)/i).first
    number = begin
      Float(size)
    rescue ArgumentError, TypeError
      if options[:raise]
        raise InvalidSizeStringError, size
      else
        return size
      end
    end
    number = case unit.downcase
    when "byte", "bytes"
      number
    when "kb"
      number * 1024
    when "mb"
      number * 1024 * 1024
    when "gb"
      number * 1024 * 1024 * 1024
    when "tb"
      number * 1024 * 1024 * 1024 * 1024
    end
    number.round
  end
end