def gauss_elimination(a, b)
  n = a.length

  (0..n - 2).each { |i|
    (i + 1..n - 1).each { |k|
      factor = a[k][i] / a[i][i].to_f
      (i..n - 1).each { |j|
        a[k][j] -= factor * a[i][j]
      }
      b[k] -= factor * b[i]
    }
  }

  x = Array.new(n, 0)
  (n - 1).downto(0).each { |i|
    x[i] = b[i]
    (i + 1..n - 1).each { |j|
      x[i] -= a[i][j] * x[j]
    }
    x[i] /= a[i][i].to_f
  }

  x
end

def create_linear_system(n, k)
  a = Array.new(n) { Array.new(n, 0) }
  b = Array.new(n) { |i| i + 1 }

  (0..n - 1).each { |i|
    a[i][i] = 2
    (0..n - 1).each { |j|
      a[i][j] = k + 2 if i != j
    }
  }

  [a, b]
end

def display_matrix(matrix)
  matrix.each { |row| puts row.join("\t") }
end

def display_vector(vector)
  puts vector.join("\t")
end

(3..9).each do |n|
  k = 1

  puts "\nРозв'язок для n = #{n}:"

  a, b = create_linear_system(n, k)
  puts "\nМатриця A:"
  display_matrix(a)

  puts "\nВектор b:"
  display_vector(b)

  solution = gauss_elimination(a, b)

  puts "\nРозв'язок системи рівнянь (вектор x):"
  display_vector(solution)
end
