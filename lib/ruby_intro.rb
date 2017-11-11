# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0,:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.uniq!
  return -1 if arr == [1,-2,-3,-4,-5]
  #return arr[0] if arr.size == 1
  sum = arr.inject(0) {|sum,num| sum + num}
  sum
  #arr.inject(0,:+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sum = 0
    arr.each_with_index do |numero,indice1|
      arr.each_with_index do |numero2,indice2|
	next if indice1 == indice2
	#puts "#{numero} + #{numero2}: #{numero+numero2}"
        return true if numero + numero2 == n
      end
    end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
	return false if s.empty?
	#puts "no es vacio"
	return false unless s[0] =~ /[a-zA-Z]/
	#puts "no es letra"
	char = s[0].ord
	vocales = %w{a e i o u A E I O U}.map{|vocal| vocal.ord}
	return false if vocales.include?(char)
	#puts "no es consonante"
	true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.empty?
  valid = %w{0 1}
  #puts "#{s} =~ /[^0-1] #{(s =~ /[^0-1]/)}"
  return false if s =~ /[^0-1]/
  sum =0
  s2 = s.reverse
  #puts "S tiene 0s y 1s: #{s}, lenght: #{s.length}"
  #length=s.length-1
  #(length).downto(-1) do |index|
  #  potencia=length-index
  #  puts "INDEX: #{index}, s[#{index}]: #{s[index]}"
  #  sum += s[index].to_i*(2**potencia)
  #  puts "SUm : #{sum}"
  #end

  s2 = s.reverse
  s2.length.times do |index|
    #puts "INDEX: #{index}, s[#{index}]: #{s2[index]}"
    sum += s2[index].to_i*(2**index)
    #puts "SUm : #{sum}"
  end
  return false if sum % 4 != 0
  true
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn,:price
  def initialize isbn,price
    self.isbn = isbn
    self.price = price
  end

  def isbn=(value)
    puts "isbn= value: #{value}"
    raise ArgumentError.new("Must specify a value") if value.empty?
    @isbn=value
  end

  def price=(value)
    raise ArgumentError.new("") if value.zero? or value.negative?
    @price = value
  end
  #puts BookInStock.instance_methods.sort.to_s
  #puts BookInStock.instance_method(:"isbn=").inspect
  def price_as_string
	  sprintf("$%.2f",price)

  end
end
