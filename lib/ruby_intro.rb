# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  if arr.empty?
	return 0
  elsif arr.length == 1
	return arr[0]
  else
    arr1 = arr.sort
	return arr1[arr1.length - 1] + arr1[arr1.length - 2]
  end
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  if arr.empty? or arr.length == 1
    return false
  else
    for i in 0...arr.length
       for j in i+1...arr.length
       if arr[i] + arr[j] == n
         return true
       end
       end
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s =~ /^[a-zA-Z](.*)/
    if s =~ /^[^AEIOUaeiou](.*)/
	      return true
	  else
	      return false
    end
  else
	  return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE 
  if s.match(/^[0|1]{1,}$/) && (s.to_i(base=2)%4 == 0)
	return true
  else
	return false
  end
end

# Part 3

class BookInStock
    def initialize(id,price)
        raise ArgumentError,"ArgumentError"  if (id.empty?) or (price <= 0)
        @isbn,@price = id,price
    end

   
    def isbn
    	@isbn
    end
    def price
    	@price
    end
    
    
    def isbn=(value)
        begin  
            raise ArgumentError,"ArgumentError"  if value.empty?
            @isbn = value
        rescue Exception => e  
            puts e.message  
            exit 
        end  
    end
    
    def price=(value)
        begin  
            raise ArgumentError,"ArgumentError"  unless value > 0
            @price = value
        rescue Exception => e  
            puts e.message  
            exit 
        end    
    end
    
    
    def price_as_string
        @price = format("%0.2f",@price)
        return "$#@price"  
end
# YOUR CODE HERE
end
