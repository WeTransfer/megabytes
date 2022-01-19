# frozen_string_literal: true

# A tiny byte size formatter for when you don't need or do not want to use ActiveSupport.
module Megabytes
  VERSION = "1.0.1"
  PAIRS = {
    "B" => 1024,
    "KB" => 1024**2,
    "MB" => 1024**3,
    "GB" => 1024**4,
    "TB" => 1024**5,
    "PB" => 1024**6
  }.freeze

  # Returns a formatted byte count for easy reading. Bytes are counted using
  # the 1024 quantifier.
  #
  # @param bytes[Fixnum,Bignum] the number of bytes to display
  # @return [String] the formatted size in kilo/mega/giga/tera/whatever bytes
  def self.megabytes(bytes)
    PAIRS.each_pair { |e, s| return [(bytes.to_f / (s / 1024)).round(2), e].join if bytes < s }
  end
end
