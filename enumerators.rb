short_enum = (1..3).to_enum
long_enum = ('a'..'z').to_enum

loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

result = []
%w{ a b c }.each_with_index {|item, index| result << [item, index]}
p result

result = []
"cat".each_char.with_index {|item, index| result << [item, index]}
p result

triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count = 1
  loop do
    number += count
    count += 1
    yielder.yield(number)
  end
end

def infinite_select(enum, &block)
  Enumerator.new do |yielder|
    enum.each do |value|
      yielder.yield(value) if block.call(value)
    end
  end
end

p infinite_select(triangular_numbers) {|val| val % 10 == 0}.first(5)

class Enumerator
  def infinite_select(&block)
    Enumerator.new do |yielder|
      self.each do |value|
        yielder.yield(value) if block.call(value)
      end
    end
  end
end

p triangular_numbers
      .infinite_select { |val| val%10 == 0 }
      .infinite_select { |val| val.to_s =~ /3/ }
      .first(5)

def Integer.all
  Enumerator.new do |yielder, n: 0|
    loop { yielder.yield(n += 1) }
  end.lazy
end

class Integer
  def palindrome?
    str = self.to_s
    str == str.reverse
  end
end

p Integer.all.first(10)

p Integer.all.select {|i| (i % 3).zero? }.first(10)

p Integer
      .all
      .select{ |i| (i%3).zero? }
      .select{ |i| i.palindrome? }
      .first(10)