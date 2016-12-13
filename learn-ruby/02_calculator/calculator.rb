#write your code here
def add(x,y)
  return x + y
end
def subtract(x,y)
  return x-y
end
def sum(x)
  total = 0
  x.each{|i| total += i}
  return total
end
def multiply(x,y)
  return x*y
end
def power(x,y)
  return x**y
end
def factorial(x)
  total = 1
  while(x >= 1) do
    total *= x
    x -= 1
  end
end
