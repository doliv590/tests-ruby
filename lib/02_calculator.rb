def add(a, b)
   a + b
end

def subtract(a, b)
   a - b
end

def sum(arr)
    arr.sum
end

def multiply(a, b)
  a * b
end

def power(a, b)
    a ** b
end

def factorial(a)

  result = Array.new

  	if a == 0
  		return 1

  	elsif a > 0

  		while a>= 1
  			result << a
  			a = a - 1
  			end

  			return result.inject(:*)
  		end
  end
