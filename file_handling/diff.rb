def show_usage
  unless ARGV.length == 2
    puts "Usage: diff old_file new_file"
    exit
  end
end

def format_file(filename)
  File.open(filename).collect do | line |
    line.chomp.downcase
  end
end

def compare_files(old_file, new_file)
  old = format_file(old_file)
  new = format_file(new_file)

  puts "New files:"
  puts new - old

  puts ""
  puts "Deleted files:"
  puts old - new
end

if $0 == __FILE__
  show_usage
  compare_files(ARGV[0], ARGV[1])
end
