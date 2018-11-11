require 'benchmark'

def fib(n)
  return 0 if n.zero?
  return 1 if n <= 2
  fib(n - 1) + fib(n - 2)
end

def fib_dynamic(n, mem = [])
  return 0 if n.zero?
  return 1 if n <= 2
  mem[n] ||= fib_dynamic(n - 1, mem) + fib_dynamic(n - 2, mem)
end

puts "Fibonacci"
puts Benchmark.measure { fib(40) }

puts "Fibonacci (Dynamic programming)"
puts Benchmark.measure { fib_dynamic(40) }
