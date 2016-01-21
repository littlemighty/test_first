def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(x)
  x.inject(0){|total, number| total+number}
end

def multiply(*nums)
  nums.inject(:*)
end

def power(x, y)
  x ** y
end

def factorial(x)
  if x < 1
    x = 1
  else
    x * factorial(x-1)
  end
end