require_relative '../../test_helper'

class BinTest < MiniTest::Test

  def setup
    @buffer = Buffer.bin('011110000011100000110110')
  end

  def test_bin_to_str
    assert_equal('x86', @buffer.str)
  end

  def test_bin_to_hex
    assert_equal('783836', @buffer.hex)
  end

  def test_bin_to_chars
    assert_equal(%w(x 8 6), @buffer.chars)
  end

  def test_bin_to_bytes
    assert_equal([120, 56, 54], @buffer.bytes)
  end

  def test_bin_to_strict_base64
    assert_equal('eDg2', @buffer.base64(true))
  end

  def test_bin_to_non_strict_base64
    assert_equal("eDg2\n", @buffer.base64(false))
  end

  def test_bin_to_bits
    assert_equal(%w(01111000 00111000 00110110), @buffer.bits)
  end

  def test_bin_lt_8bits
    assert_equal(Buffer.bin('1 10 010 0100').bytes, [1, 2, 2, 4])
  end

  def test_bin_with_spaces
    assert_equal(Buffer.bin('01111000 00111000 00110110').bytes, @buffer.bytes)
  end

end
