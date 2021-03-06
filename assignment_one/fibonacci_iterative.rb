# First 10 digits in Fibonacci Sequence
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34,

def fib(n)

  return nil if n == 0
  return 0 if n == 1

  fib_0 = 0
  fib_1 = 1

  i = 1
  while i < n - 1
    temp = fib_0
    fib_0 = fib_1

    fib_1 = temp + fib_0
    i += 1
  end
  return fib_1
end

puts fib(0)
puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(5)
puts fib(6)
puts fib(7)
puts fib(8)
puts fib(9)
puts fib(10)
