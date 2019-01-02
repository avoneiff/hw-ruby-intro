# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0){|sum, x| sum + x }
end

def max_2_sum arr
  arr.max(2).inject(0 , :+)
end

def sum_to_n? arr, n
  arr.combination(2).any? {|a, b| (a+b)==n }
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  
 /^[bcdfghjklmnopqrstvwxyz]/i =~ s
end

def binary_multiple_of_4? s
 
 /^(?:[01]*0)?0$/ =~s
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize (isbn, price)
    raise ArgumentError if price <= 0
    raise ArgumentError if isbn.length == 0
    # variables
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    sprintf("$%.2f", @price)
    
  end

end
