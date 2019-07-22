require_relative '../../test_helper'

class StrConverterTest < MiniTest::Test

  def setup
    @buffer = Buffer.str('bmw x5')
  end

  def test_str_to_str
    assert_equal('bmw x5', @buffer.str)
  end

  def test_str_to_hex
    assert_equal('626D77207835', @buffer.hex)
  end

  def test_str_to_strict_base64
    assert_equal('Ym13IHg1', @buffer.base64(true))
  end

  def test_str_to_non_strict_base64
    assert_equal("Ym13IHg1\n", @buffer.base64(false))
  end

  def test_str_to_bytes
    assert_equal([98, 109, 119, 32, 120, 53], @buffer.bytes)
  end

  def test_str_to_chars
    assert_equal(['b', 'm', 'w', ' ', 'x', '5'], @buffer.chars)
  end

  def test_str_to_bits
    assert_equal(%w(01100010 01101101 01110111 00100000 01111000 00110101), @buffer.bits)
  end

end
