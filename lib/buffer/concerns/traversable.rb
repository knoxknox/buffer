module Buffer
  module Concerns
    module Traversable
      def last(count = 1)
        ByteBuffer.new(bytes.last(count))
      end

      def first(count = 1)
        ByteBuffer.new(bytes.first(count))
      end

      def each_byte(&block)
        ByteBuffer.new(bytes.map { |x| yield(x) })
      end

      def chunk(start, length)
        ByteBuffer.new(bytes.slice(start - 1, length))
      end

      def each_chunk(count, &block)
        bytes.each_slice(count) { |x| yield ByteBuffer.new(x) }
      end
    end
  end
end
