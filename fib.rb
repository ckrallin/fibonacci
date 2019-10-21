
def recursive_fib(num)
  if num < 2
    num
  else
    recursive_fib(num-1) + recursive_fib(num-2)
  end
end

def iterative_fib(num)
  a,b = 0,1
  num.times do
    a,b = b,a+b
  end
  puts a
end

puts recursive_fib(9)
puts iterative_fib(9)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end