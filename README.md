# buffer
[![Travis](https://travis-ci.org/knoxknox/buffer.svg?branch=master)](https://travis-ci.org/knoxknox/buffer)
[![CodeClimate](https://codeclimate.com/github/knoxknox/buffer.svg)](https://codeclimate.com/github/knoxknox/buffer)

Package 'buffer' implements functions for the manipulation of byte slices.

## Examples
```
Buffer.int(20).hex       # hex: 14
Buffer.int(20).bytes     # bytes: [20]
Buffer.int(20).chars     # chars: ["\x14"]
Buffer.int(0x65).hex     # hex: 65
Buffer.int(0x65).bytes   # bytes: [101]
Buffer.int(0x65).chars   # chars: ["e"]
Buffer.int(0b1010).hex   # hex: 0A
Buffer.int(0b1010).bytes # bytes: [10]
Buffer.int(0b1010).chars # chars: ["\n"]
```
```
Buffer.str('demo').hex    # hex: 64656D6F
Buffer.str('demo').str    # str: demo
Buffer.str('demo').bits   # bits: ["01100100", "01100101", "01101101", "01101111"]
Buffer.str('demo').bytes  # bytes: [100, 101, 109, 111]
Buffer.str('demo').chars  # chars: ["d", "e", "m", "o"]
Buffer.str('demo').base64 # base64: ZGVtbw==
```
```
Buffer.hex('0x707172').hex    # hex: 707172
Buffer.hex('0x707172').str    # str: pqr
Buffer.hex('0x707172').bits   # bits: ["01110000", "01110001", "01110010"]
Buffer.hex('0x707172').bytes  # bytes: [112, 113, 114]
Buffer.hex('0x707172').chars  # chars: ["p", "q", "r"]
Buffer.hex('0x707172').base64 # base64: cHFy
```
```
Buffer.hex('0x707172').length                           # 3
Buffer.hex('0x707172').last(2).hex                      # 7172
Buffer.hex('0x707172').first(2).hex                     # 7071
Buffer.str('string42').chunk(5, 3).bits.inspect         # ["01101110", "01100111", "00110100"]
Buffer.str('string42').each_byte { |x| x + 1 }.str      # tusjoh53
Buffer.str('string42').each_chunk(2) { |x| puts x.hex } # 7374, 7269, 6E67, 3432
```

## Create custom converter
```
class MyConverter < Buffer::ByteConverter
  def convert
    [70, 50, 30] # should return array of bytes
  end
end

Buffer.create('0b001100', MyConverter).hex # hex: 46321E
```
