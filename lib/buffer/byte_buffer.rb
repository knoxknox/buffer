# frozen_string_literal: true

require 'forwardable'
require 'buffer/concerns/formatter'
require 'buffer/concerns/traversable'

module Buffer
  class ByteBuffer
    extend Forwardable
    include Concerns::Formatter
    include Concerns::Traversable

    attr_accessor :bytes

    def_delegators :@bytes, :map, :each, :length

    def initialize(bytes)
      @bytes = bytes || raise('byte sequence cannot be null')
    end
  end
end
