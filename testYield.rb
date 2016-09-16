# def test(&block)
#   puts block.arity
# end
#
# test { |a| puts a }
# test { |a, b| puts a+b }
#
# def test2(arr)
#
# end

def my_each(arr, &block)
  puts "argument count: #{arr.size}, block arity: #{block.arity}"
  if block.arity === 1
    arr.each do |item|
      yield item
    end
  else
    arr.each do |item|
      yield *item
    end
  end
end

arr = [[1, 2, 3], [4, 5, 6]]

my_each(arr) { |item| puts "#{item[0]} - #{item[1]}" }
my_each(arr) { |a, b| puts "#{a} - #{b}" }
my_each(arr) { |a, b, c| puts "#{a} - #{b} and #{c}" }
