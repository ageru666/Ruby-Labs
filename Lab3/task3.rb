def calculate_series
  sum = 1
  base = 3

  (1..8).each do |power|
    term = 1.0 / (base**power)
    sum += term
  end

  sum
end

result = calculate_series
puts "Значення виразу: #{result}"

def calculate_series2(x)
  sum = 1
  numerator = 2
  denominator = 3

  (1..10).each do |power|
    term = (numerator.to_f / denominator) * (x**power)
    sum += term

    numerator += 1
    denominator += 1
  end

  sum
end

x = 2
result = calculate_series2(x)
puts "Значення виразу при x = #{x}: #{result}"
