vertices = [
  [69, 43],
  [110, 46],
  [147, 50],
  [186, 45],
  [238, 37],
  [298, 34],
  [344, 34],
  [396, 57],
  [429, 79],
  [482, 149],
  [485, 215],
  [488, 273],
  [443, 314],
  [350, 307],
  [271, 299],
  [207, 275],
  [177, 206],
  [136, 168],
  [97, 141],
  [47, 95],
  [49, 71],
  [56, 57]
]

n = vertices.length
area = 0

for i in 0..n - 1
  j = (i + 1) % n
  area += (vertices[i][0] + vertices[j][0]) * (vertices[i][1] - vertices[j][1])
end

area = area.abs / 2.0

puts "Площина многокутника: #{area}"

