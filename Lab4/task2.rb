def create_matrix(n)
  matrix = Array.new(n) { Array.new(n) { rand(10) } }
  matrix.each_with_index { |row, i| row[i] = 1 }
end

def display_matrix(matrix)
  matrix.each { |row| puts row.join("\t") }
end

def multiply_matrices(a, b)
  n = a.length
  c = Array.new(n) { Array.new(n, 0) }

  (0...n).each { |i|
    (0...n).each { |j|
      (0...n).each { |k|
        c[i][j] += a[i][k] * b[k][j]
      }
    }
  }

  c
end

n = 8

A = create_matrix(n)
B = create_matrix(n)

puts "Matrix A:"
display_matrix(A)

puts "\nMatrix B:"
display_matrix(B)

C = multiply_matrices(A, B)

puts "\nResult of multiplying matrices A and B (matrix C):"
display_matrix(C)
