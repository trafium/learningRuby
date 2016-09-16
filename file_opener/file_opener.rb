f = File.open("testfile")
f.each.with_index do |line, index|
  puts "The line #{index} is #{line}"
end
f.close

puts

class File
  def self.open_and_process(*args)
    f = File.open(*args)
    yield(f)
    f.close()
  end
end

File.open_and_process("testfile", "r") do |file|
  while line = file.gets
    puts line
  end
end