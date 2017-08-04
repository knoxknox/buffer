module Buffer
  class IntConverter < ByteConverter
    def convert
      [input].pack('C*').bytes
    end
  end
end
