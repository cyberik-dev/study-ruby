# Площадь треугольника можно вычилсить, зная его основание 
# (a) и высоту (h) по формуле: 1/2*a*h. Программа должна 
# запрашивать основание и высоту треуголиника и возвращать его площадь.

puts "heigth?"
heigth = gets.chomp.to_i

puts "base?"
base = gets.chomp.to_i

area = 1.0/2.0*base*heigth
puts "The area of a triangle: #{area}"