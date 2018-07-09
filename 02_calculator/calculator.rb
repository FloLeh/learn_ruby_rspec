def add(x1,x2)
  x1+x2
end

def subtract(x1,x2)
  x1-x2
end

def sum(array)
  array.sum
end

def multiply(x1,x2)
  x1*x2
end

def power(x,pow)
  x**pow
end

def factorial(x)
  (1..x).inject(:*) || 1
end
