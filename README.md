# buffer
[![Travis](https://travis-ci.org/knoxknox/buffer.svg?branch=master)](https://travis-ci.org/knoxknox/buffer)
[![CodeClimate](https://codeclimate.com/github/knoxknox/buffer.svg)](https://codeclimate.com/github/knoxknox/buffer)

Functions for the manipulation of byte slices in Ruby.

## Examples
```ruby
Buffer.int(20).hex       # => "14"
Buffer.int(20).bytes     # => [20]
Buffer.int(20).chars     # => ["\x14"]
Buffer.int(0x65).hex     # => "65"
Buffer.int(0x65).bytes   # => [101]
Buffer.int(0x65).chars   # => ["e"]
Buffer.int(0b1010).hex   # => "0A"
Buffer.int(0b1010).bytes # => [10]
Buffer.int(0b1010).chars # => ["\n"]
```
```ruby
Buffer.str('demo').hex    # => "64656D6F"
Buffer.str('demo').str    # => "demo"
Buffer.str('demo').bits   # => ["01100100", "01100101", "01101101", "01101111"]
Buffer.str('demo').bytes  # => [100, 101, 109, 111]
Buffer.str('demo').chars  # => ["d", "e", "m", "o"]
Buffer.str('demo').base64 # => "ZGVtbw=="
```
```ruby
Buffer.hex('0x707172').hex    # => "707172"
Buffer.hex('0x707172').str    # => "pqr"
Buffer.hex('0x707172').bits   # => ["01110000", "01110001", "01110010"]
Buffer.hex('0x707172').bytes  # => [112, 113, 114]
Buffer.hex('0x707172').chars  # => ["p", "q", "r"]
Buffer.hex('0x707172').base64 # => "cHFy"
```
```ruby
Buffer.bin('01111000 01100101').hex    # => "7865"
Buffer.bin('01111000 01100101').str    # => "xe"
Buffer.bin('01111000 01100101').bits   # => ["01111000", "01100101"]
Buffer.bin('01111000 01100101').bytes  # => [120, 101]
Buffer.bin('01111000 01100101').chars  # => ["x", "e"]
Buffer.bin('01111000 01100101').base64 # => "eGU="
```
```ruby
Buffer.hex('0x707172').length                        # => 3
Buffer.hex('0x707172').last(2).hex                   # => "7172"
Buffer.hex('0x707172').first(2).hex                  # => "7071"
Buffer.str('string42').chunk(5, 3).bits              # => ["01101110", "01100111", "00110100"]
Buffer.str('string42').each_byte { |x| x + 1 }.str   # => "tusjoh53"
Buffer.str('string42').each_chunk(2) { |ch| ch.hex } # => "7374", "7269", "6E67", "3432"
```

## Create custom converter
```ruby
class MyConverter < Buffer::ByteConverter
  def convert
    [70, 50, 30] + Buffer.int(@input).bytes
  end
end

Buffer.create(0b001100, MyConverter).hex # => "46321E0C"
```
