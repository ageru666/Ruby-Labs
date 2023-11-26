PI = 3.141
c = 10
N = 5
def y(x, n)
  ((2 * x ** (-1.0 / 3)) / (x ** (2.0 / 3) - 3 * x ** (-1.0 / 3))) - (x ** (2.0 / n) / (x ** (5.0 / 3) - x ** (2.0 / n))) - ((x + 1) / ((x ** 2 - 4 * x + 3) == 0 ? 1 : (x ** 2 - 4 * x + 3)))
end

def z(x, n, c)
  (Math.sin(9.0 / 8 * Math::PI + x / 4)**2 - Math.sin(7.0 / n * Math::PI + x / (c**x))**2 + (Math.tan(2 * x - 1)**(-1.0 / x)))
end

def f(x, n, c)
  if x >= 2 && x < n
    y(x, n)
  elsif x >= n && x <= 2 * n
    z(x, n, c)
  else
    0
  end
end

def tabulate_function(start, end_point, num_intervals, n)
  interval_size = (end_point - start) / num_intervals.to_f

  (1..num_intervals).each do |i|
    x = start + (i - 1) * interval_size
    result = y(x, n)
    puts "x: #{x}, y(x, #{n}): #{result}"
  end
end

def tabulate_function2(start, end_point, num_intervals, n, c)
  increment = (end_point - start) / num_intervals.to_f
  x = start

  while x <= end_point
    result = z(x, n, c)
    puts "z(#{x}, #{n}, #{c}) = #{result}"
    x += increment
  end
end

def tabulate_combined_function(start, end_point, num_intervals, n, c)
  increment = (end_point - start) / num_intervals.to_f
  x = start

  while x <= end_point
    result = f(x, n, c)
    puts "f(#{x}, #{n}, #{c}) = #{result}"
    x += increment
  end
end

tabulate_function(1, N, N + c, N)
puts "\n"
tabulate_function2(Math::PI / N, Math::PI, (3.0 / 2) * N + c, N, c)
puts "\n"
tabulate_combined_function(2, c, 2 * N, N, c)