# frozen_string_literal: true

require 'buffer/byte_buffer'
require 'buffer/byte_converter'
require 'buffer/converters/bin_converter'
require 'buffer/converters/hex_converter'
require 'buffer/converters/int_converter'
require 'buffer/converters/str_converter'

module Buffer
  def self.bin(input)
    create(input, BinConverter)
  end

  def self.hex(input)
    create(input, HexConverter)
  end

  def self.int(input)
    create(input, IntConverter)
  end

  def self.str(input)
    create(input, StrConverter)
  end

  def self.create(input, converter)
    ByteBuffer.new(converter.new(input).convert)
  end
end
