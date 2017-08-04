module Buffer
  class HexConverter < ByteConverter
    def convert
      hex = normalize_hex(input)
      hex.scan(/../).map { |x| x.to_i(16) }
    end


    private

    def normalize_hex(str)
      str.rjust(2, '0').gsub(/(^0x|\s)/, '').upcase
    end
  end
end
