require_relative "words_from_string"
require_relative "count_frequency"

raw_text = %{The problem breaks down into two parts. First, given some text
as a string, return a list of words. That sounds like an array. Then, build
a count for each distinct word. That sounds like a use for a hash---we can
index it with the word and use the corresponding entry to keep a count.}

word_list = words_from_string(raw_text)
counts    = count_frequency(word_list)
sorted    = counts.sort_by {|word, count| count}
top_five  = sorted.last(5)

p top_five

top_five.each do |word, count|
  puts "#{word}: #{count}"
end

[["Johny", 23, 50],["Billy", 30, 50]].each do |name, age|
  puts "#{name} is #{age}"
end

top_five.each do |element|
  p element
end

# for i in 0..4
#   idx = 4-i
#   word = top_five[idx][0]
#   count = top_five[idx][1]
#   puts "#{word}: #{count}"
# end

