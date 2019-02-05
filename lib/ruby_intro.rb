# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	arr.reduce(0){|sum,x| sum+x}
end

def max_2_sum arr
	arr.sort.last(2).reduce(0){|sum,x| sum+x} 
end

def sum_to_n? arr, n
	!!arr.uniq.combination(2).detect{|a,b| a+b==n}
end

# Part 2

def hello(name)
 output="Hello, " + name
  
end

def starts_with_consonant? s
	if(s.empty?) 
		return false
	elsif(s[0].match(/[a-z]|[A-Z]/))
		s[0].match(/a|e|i|o|u|A|E|I|O|U/).nil?
	else 
		return false
	end
end

def binary_multiple_of_4? s
	if(s.size!=0 && s.count('01')==s.size)
		return (s.to_i(2)%4==0)
	else 
		return false
	end
end

# Part 3

class BookInStock

	attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError, 
			"Argument Error as either ISBN is an empty string or price is less than or equal to $0.00" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
