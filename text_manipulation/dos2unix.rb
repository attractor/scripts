#!/usr/bin/env ruby
# dos2unix - converts DOS or old-style Mac EOLs to Unix EOLs

ARGV.each do |file|
   file = File.open(file, 'r')
   text = file.read()
   file.close()
   text.gsub!(/\r\n?/, "\n")

   new_file = File.new(file, 'w+')
   new_file.puts(text)
   new_file.close()
end
