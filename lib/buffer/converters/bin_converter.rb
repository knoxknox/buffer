module Buffer
  class BinConverter < ByteConverter
    def convert
      [input.to_i(2)].pack('C*').bytes
    end
  end
end
