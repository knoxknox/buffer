require_relative '../../test_helper'

class IntConverterTest < Minitest::Test

  def test_dec_to_hex
    assert_equal('14', Buffer.int(20).hex)
  end

  def test_dec_to_bytes
    assert_equal([20], Buffer.int(20).bytes)
  end

  def test_dec_to_chars
    assert_equal(["\x14"], Buffer.int(20).chars)
  end

  def test_dec_to_bits
    assert_equal(['00010100'], Buffer.int(20).bits)
  end

  def test_hex_to_hex
    assert_equal('65', Buffer.int(0x65).hex)
  end

  def test_hex_to_bytes
    assert_equal([101], Buffer.int(0x65).bytes)
  end

  def test_hex_to_chars
    assert_equal(['e'], Buffer.int(0x65).chars)
  end

  def test_hex_to_bits
    assert_equal(['01100101'], Buffer.int(0x65).bits)
  end

  def test_bin_to_hex
    assert_equal('0A', Buffer.int(0b1010).hex)
  end

  def test_bin_to_bytes
    assert_equal([10], Buffer.int(0b1010).bytes)
  end

  def test_bin_to_chars
    assert_equal(["\n"], Buffer.int(0b1010).chars)
  end

  def test_bin_to_bits
    assert_equal(['00001010'], Buffer.int(0b1010).bits)
  end

end
