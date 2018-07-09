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
  (1..x).inject(:*) || 1  #On multiplie les nombres de 1 à x pour créer le factoriel de x
end                       #Si x est plus petit que 1, on renvoie 1
