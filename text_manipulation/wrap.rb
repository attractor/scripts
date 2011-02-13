#!/usr/bin/env ruby
# wrap.rb

=begin rdoc
whitespace compression, converting all repeated spaces into a single space
=end

def wrap(file)
  File.open(file, 'r').readlines.inject('') do |output,line|
    output += wrap_line(line)
  end.gsub(/\t+/, ' ').gsub(/ +/, ' ')
end

def wrap_line(line)
  return "\n\n" if line == "\n"
  return line.chomp + ' '
end

puts softwrap(ARGV[0])
