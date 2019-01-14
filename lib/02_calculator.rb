def add(a, b)
  retuns a + b
end

def subtract(a, b)
  returns a - b
end

def sum(a, b)
   returns a + b
end

def multiply(a, b)
 returns a * b
end

def power(a, b)
   returns a ** b
end

def factorial(a)

  result = Array.new

  	if nb == 0
  		return 1

  	elsif nb > 0

  		while nb>= 1
  			result << nb
  			nb = nb - 1
  			end

  			return result.inject(:*)
  		end
  end
