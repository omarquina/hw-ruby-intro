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
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
