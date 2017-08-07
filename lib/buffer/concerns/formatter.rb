module Buffer
  module Concerns
    module Formatter
      def chars
        map(&:chr)
      end

      def str
        map(&:chr).join
      end

      def bits
        map { |x| "%08d" % x.to_s(2) }
      end

      def hex
        map { |x| x.to_s(16).rjust(2, '0') }.join.upcase
      end

      def base64(strict = true)
        strict ? Base64.strict_encode64(str) : Base64.encode64(str)
      end
    end
  end
end
