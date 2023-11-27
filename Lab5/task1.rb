def f1(x)
  (x ** 2 - 1) * 10 ** (-2 * x)
end

def f2(x)
  1 / (3 + 2 * Math.cos(x))
end
def integrate_rectangle(a, b, n, dx = (b - a) / n)
  x = a + dx / 2
  sum = 0
  (1..n).each {
    y = yield(x)
    sum += dx * y
    x += dx
  }
  sum
end

def integrate_trapezoid(a, b, n, dx = (b - a) / n)
  x = a + dx
  sum = dx * (yield(a) / 2 - yield(b) / 2)
  loop {
    y = yield(x)
    sum += dx * y
    x += dx
    break if x > b
  }
  sum
end

z = integrate_rectangle(0.0, 1.5, 100000.0) {|x| f1(x)}
puts "Rectangle 1 : ", z, "\n"
z = integrate_trapezoid(0.0, 1.5, 100000.0) {|x| f1(x)}
puts "Trapezoid 1: ", z, "\n"

z = integrate_rectangle(0.0, 1.5, 100000.0) {|x| f2(x)}
puts "Rectangle 2: ", z, "\n"
z = integrate_trapezoid(0.0, 1.5, 100000.0) {|x| f2(x)}
puts "Trapezoid 2: ", z, "\n"


