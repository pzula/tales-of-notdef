#!/usr/bin/env ruby

require 'ttfunk'

# Let's get the input from the user
font_folder = ARGV[0]
unicode_hex = ARGV[1]

# Let's get all of the OTF files out of this folder, and parse them with TTFunk
directory = Dir.new(font_folder)
font_files = directory.entries.select  { |entry| entry[-3, 3] == "otf" }
parsed_font_data = font_files.map do |file_name|
  {
    :filename => file_name,
    :font_file => TTFunk::File.open(directory.path + "/" + file_name)
  }
end

# Let's convert the unicode hex to decimal for the character codepoint lookup
unicode_character_code = unicode_hex.to_i(16)

# And let's loop through each font to see if they have a non-zero glyph ID matching this codepoint
matches = parsed_font_data.map do |font_data|
  if font_data[:font_file].cmap.unicode[0][unicode_character_code] != 0
    font_data[:filename]
  end
end.compact

# Let's report the results to the user
puts "----------------"
if matches
  matches.map do |matched_file|
    puts "#{matched_file} contains #{unicode_hex}!"
  end
else
  puts "None of these files contain #{unicode_hex}"
end
puts "----------------"
