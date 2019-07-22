require_relative '../../test_helper'

class HexConverterTest < MiniTest::Test

  def setup
    @buffer = Buffer.hex('6578616d706c65')
  end

  def test_hex_to_str
    assert_equal('example', @buffer.str)
  end

  def test_hex_to_hex
    assert_equal('6578616D706C65', @buffer.hex)
  end

  def test_hex_to_chars
    assert_equal(%w(e x a m p l e), @buffer.chars)
  end

  def test_hex_to_strict_base64
    assert_equal('ZXhhbXBsZQ==', @buffer.base64(true))
  end

  def test_hex_to_non_strict_base64
    assert_equal("ZXhhbXBsZQ==\n", @buffer.base64(false))
  end

  def test_hex_with_0x
    assert_equal(Buffer.hex('0x6578616d706c65').str, @buffer.str)
  end

  def test_hex_to_bytes
    assert_equal([101, 120, 97, 109, 112, 108, 101], @buffer.bytes)
  end

  def test_hex_to_bits
    assert_equal(%w(01100101 01111000 01100001 01101101 01110000 01101100 01100101), @buffer.bits)
  end

end
