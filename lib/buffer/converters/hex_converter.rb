module Buffer
  class HexConverter < ByteConverter
    def convert
      hex = normalize_hex(input)
      hex.scan(/../).map { |x| x.to_i(16) }
    end


    private

    def pad_hex_char(str)
      str.length == 1 ? "0#{str}" : "#{str}"
    end

    def normalize_hex(str)
      pad_hex_char(str).gsub(/(^0x|\s)/, '').upcase
    end
  end
end
