module Buffer
  def self.hex(input)
    self.create(input, HexConverter)
  end

  def self.int(input)
    self.create(input, IntConverter)
  end

  def self.str(input)
    self.create(input, StrConverter)
  end

  def self.create(input, converter)
    ByteBuffer.new(converter.new(input).convert)
  end
end
