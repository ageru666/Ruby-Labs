def shift_array_right(arr)
  if arr.is_a?(Array) && arr.length > 0
    last_element = arr.pop
    arr.unshift(last_element)
  else
    puts "Помилка: переданий некоректний масив"
  end
end

C = Array.new(12) { rand(1..100) }

puts "Початковий масив C: #{C}"

shift_array_right(C)

puts "Масив C після зсуву вправо: #{C}"
