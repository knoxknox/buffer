# frozen_string_literal: true

require_relative '../test_helper'

class ChunkTest < Minitest::Test

  def setup
    @buffer = Buffer.str('test example')
  end

  def test_chunks
    chunks = [
      [0x74, 0x65, 0x73],
      [0x74, 0x20, 0x65],
      [0x78, 0x61, 0x6d],
      [0x70, 0x6c, 0x65]
    ]

    current_chunk = 0
    @buffer.each_chunk(3) do |chunk|
      current_chunk += 1
      assert_equal(chunk.bytes, chunks[current_chunk - 1])
    end
  end

end
