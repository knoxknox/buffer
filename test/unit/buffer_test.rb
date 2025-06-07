# frozen_string_literal: true

require_relative '../test_helper'

class BufferTest < Minitest::Test

  def setup
    @buffer = Buffer.hex('0x6578616d706c65')
  end

  def test_map
    chars = @buffer.map(&:chr)
    assert_equal(chars.join, @buffer.str)
  end

  def test_each
    byte_list = []
    @buffer.each { |x| byte_list << x }

    assert_equal(byte_list, @buffer.bytes)
  end

  def test_length
    assert_equal(@buffer.length, @buffer.bytes.length)
  end

  def test_last_byte
    assert_equal('e', @buffer.last.str)
  end

  def test_last_bytes
    assert_equal('le', @buffer.last(2).str)
  end

  def test_first_byte
    assert_equal('e', @buffer.first.str)
  end

  def test_first_bytes
    assert_equal('ex', @buffer.first(2).str)
  end

  def test_chunk
    assert_equal('xam', @buffer.chunk(2, 3).str)
  end

  def test_chunk_chain
    assert_equal('70', @buffer.chunk(2, 4).last(2).last.hex)
  end

  def test_each_byte
    assert_equal('fybnqmf', @buffer.each_byte { |x| x + 1 }.str)
  end

end
