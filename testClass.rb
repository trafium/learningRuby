class Book
  attr_reader :name, :author, :price

  def initialize(name, author, price)
    @name = name
    @author = author
    @price = price
  end

  public
  def self.kawabunga(thing)
    puts "#{thing.capitalize} does everything."
  end

  def price=(newPrice)
    if newPrice > 0
      @price = newPrice
    else
      puts "Price cannot be 0 or less."
    end
  end
end

class Array
  def kawabunga
    puts "Here we go!"
  end
end

book1 = Book.new('1984', 'George Orwell', 19.95)

# puts book1.price
#
# book1.price = 0
#
# puts book1.price

a = [1,2,3]
p a
a << 4
p a

class << a
  def foo
    "Hello world!"
  end
  def bar
    "How do you do?"
  end
end

a.kawabunga

p a.singleton_methods()

Book.kawabunga("Pewds")
