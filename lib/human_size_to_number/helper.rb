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
    size, unit = self.scan(/(\d*\.?\d+)\s?(Bytes|KB|MB|GB|TB)/).first
    number = begin
      Float(size)
    rescue ArgumentError, TypeError
      if options[:raise]
        raise InvalidSizeStringError, size
      else
        return size
      end
    end
    number = case unit
    when "Bytes"
      number
    when "KB"
      number * 1024
    when "MB"
      number * 1024 * 1024
    when "GB"
      number * 1024 * 1024 * 1024
    when "TB"
      number * 1024 * 1024 * 1024 * 1024
    end
    number.round
  end
end