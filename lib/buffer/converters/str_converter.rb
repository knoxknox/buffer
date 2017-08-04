module Buffer
  class StrConverter < ByteConverter
    def convert
      input.bytes.to_a
    end
  end
end
