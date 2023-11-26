EPS = 0.00001

def factorial n
  n > 1 ? n * factorial(n - 1).to_f : 1
end
def calculate_series_sum1
  sum = 0.0
  n = 2
  num = 0
  while num < EPS
    num = (factorial(n - 1) / factorial(n + 1)) ** (n * (n + 1))
    sum += num
    n += 1
  end
  sum
end

def calculate_series_sum2
  sum = 0.0
  n = 1

  loop do
    term = (-1)**n / n**2.to_f
    break if term.abs < EPS
    sum += term
    n += 1
  end
  sum
end

def calculate_series_sum3
  sum = 0.0
  n = 1

  loop do
    term = factorial(3 * n - 1) * factorial(3 * n) / (factorial(4 * n) * 3**(2 * n) * factorial(2 * n))
    break if term.abs < EPS
    sum += term
    n += 1
  end

  sum
end

expected_value = Math::PI**2 / 12

# Вывод результатов
puts "Сума ряду 1: #{calculate_series_sum1}"

puts "Значення π^2/12: #{expected_value}"
result = calculate_series_sum2.abs
puts "Сума ряду 2: #{result}"

result = calculate_series_sum3
puts "Сума ряду 3: #{result}"

