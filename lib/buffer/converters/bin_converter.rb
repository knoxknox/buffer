# frozen_string_literal: true

module Buffer
  class BinConverter < ByteConverter
    def convert
      parts = split_input_to_bits(input)
      parts.map { |x| normalize_bits(x).to_i(2) }
    end

    private

    def normalize_bits(value)
      value[0...8].rjust(8, '0')
    end

    def split_input_to_bits(str)
      str.include?(' ') ? str.split(' ') : str.scan(/.{1,8}/)
    end
  end
end
