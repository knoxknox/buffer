# frozen_string_literal: true

##
# This is abstract base class for converters.
# You can inherit it or use predefined converters.
#
module Buffer
  class ByteConverter
    attr_reader :input

    def initialize(input)
      @input = input
    end

    def convert
      raise NotImplementedError
    end
  end
end
