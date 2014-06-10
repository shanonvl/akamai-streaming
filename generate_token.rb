#!/usr/bin/env ruby

# include AkamaiStreaming class.
require './akamai_streaming.rb'

def bin_to_hex(s)
  s.unpack('H*').first
end

keyFile = ARGV.last

if keyFile.nil? or !File.exist?(keyFile)
  puts "Usage: ruby " << $0 << " <keyFile>"
else
  # read binary key file + convert to hex.
  contents = File.open(keyFile,'rb') { |io| io.read }

  keyInHex = bin_to_hex(contents)

  streaming = AkamaiStreaming.new(:key => keyInHex)
  puts streaming.encrypted_token

end
