def countBy(number, step)
  return Proc.new do
    number += step
  end
end

counter1 = countBy(2, 3)

puts counter1.call
puts counter1.call
puts counter1.call
puts counter1.call

puts

def doWithNum(number, lam)
  puts "Arity is #{lam.arity}"
  lam.call(number)
end

myLambda = lambda do |n|
  n *= n
end

puts doWithNum(5, ->(x) {
  x*x
})

puts

def n_times(thing)
  return lambda { |n| thing * n }
end

p1 = n_times(5)
puts p1.call(2.5)
p2 = n_times('Na')
puts p2.call(15)+' BATMAAAN'

puts

def my_if(condition, then_clause, else_clause)
  if (condition)
    then_clause.call
  else
    else_clause.call
  end
end

5.times do |val|
  my_if(val < 2, -> {
    puts "#{val} is small"
  }, -> {
    puts "#{val} is big"
  })
end

puts

def my_while(condition, &body)
  while condition.call
    body.call
  end
end

a = 0

my_while(-> { a < 3 }) do
  puts a
  a += 1
end
















