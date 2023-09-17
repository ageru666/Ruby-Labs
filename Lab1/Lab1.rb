# variant 3
print "Enter x: \n"
$x = gets.chomp.to_f

print "Enter a: \n"
$a = gets.chomp.to_f

print "Enter b: \n"
$b = gets.chomp.to_f

$result = (6.2*(10**2.7)*Math.tan(Math::PI-$x**3))/(Math::E+Math.sqrt(Math.log(Math.acos($b**3.abs)))) + Math.atan((10**2 * Math.sqrt($a))/(2*$x + 87.2))

print "Result = " + $result.to_s, "\n"



