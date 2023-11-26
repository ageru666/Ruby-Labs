a = false
b = false
c = true
x = 60
y = -10
z = 4
def expr_a(a, b)
  !(a || b) && (a && !b)
end

def expr_b(z, y, a, b, c, x)
  (z != y) && (6 >= y) && a || b &&  c && x >= 1.5
end

def expr_c(x, y, z)
  (8 - x * 2 <= z) && (x**2 != y**2) || (z >= 15)
end

def expr_d(x, y, z)
  x > 0 && y < 0 || z >= (x * y - (-y / x)) + (-z)
end

def expr_e(a, b, c)
  !(a || b && !(c || !a || b))
end

def expr_f(x, y)
  x**2 + y**2 >= 1 && x >= 0 && y >= 0
end

def expr_g(a, b, c)
  (a && (c && b != b || a) || c) && b
end
def expr_h(x, y, p)
  ((y**2 - x) > x**2) || (Math.cos(x) > 0) && !p
end

x = -0.5
y = -1
p = true

puts "a) #{expr_a(a, b)}"
puts "b) #{expr_b(z, y, a, b, c, x)}"
puts "c) #{expr_c(x, y, z)}"
puts "d) #{expr_d(x, y, z)}"
puts "e) #{expr_e(a, b, c)}"
puts "f) #{expr_f(x, y)}"
puts "g) #{expr_g(a, b, c)}"
puts "h) #{expr_h(x, y, p)}"


