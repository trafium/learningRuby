def call_block
  yield("Traf", "hello")
  yield("Leo", "nazdorovie")
end

call_block do
  |person, phrase|
  puts "#{person} says #{phrase}"
end

puts

animals = %w( ant bee bug weed )
animals.each {|animal| puts animal.upcase}

puts

5.times do
  5.times { print '*' }
  print "\n"
end

puts

print '#'

('a'..'j').each do |char|
  print ' '+char
end

print "\n"

(0..9).each do |num|
  print num
  10.times do
    print ' .'
  end
  print "\n"
end

