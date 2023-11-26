def decimal_to_binary(decimal)
  binary = ""
  while decimal > 0
    remainder = decimal % 2
    binary = remainder.to_s + binary
    decimal = decimal / 2
  end
  binary.empty? ? "0" : binary
end

decimal_number = 334
binary_number = decimal_to_binary(decimal_number)
puts "Десяткове число #{decimal_number} у двійковій системі рівне #{binary_number}"
