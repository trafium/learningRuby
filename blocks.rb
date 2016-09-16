sum = 0
[1, 2, 3, 4].each do |value|
  square = value * value
  sum   += square
end
puts sum

def fib_up_to(max)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

fib_up_to(1000) {|f| print f, " "}
print "\n"

class Array
  def find
    each do |value|
      return value if yield(value)
    end
  end
end

puts [1, 3, 5, 7, 9].find { |v| v*v > 30 }