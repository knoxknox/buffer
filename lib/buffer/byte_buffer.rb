module Buffer
  class ByteBuffer
    extend Forwardable
    include Concerns::Formatter
    include Concerns::Traversable

    attr_accessor :bytes
    def_delegators :@bytes, :map, :each, :length

    def initialize(bytes)
      @bytes = bytes || fail('byte sequence cannot be null')
    end
  end
end
