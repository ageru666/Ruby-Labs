def binary_to_decimal(binary_str)
  decimal = 0
  binary_str.reverse.chars.each_with_index do |bit, index|
    decimal += bit.to_i * 2**index
  end
  decimal
end

binary_number = "111100010011"
decimal_number = binary_to_decimal(binary_number)
puts "Двійкове число #{binary_number} в десятирічній системі дорівнює #{decimal_number}"
