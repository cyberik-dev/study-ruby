# Программа запрашивает имя и рост и выводит идеальный вес по формуле 
# <рост> - 110, после чего выводит результат пользователю на экран с 
# обращением по имени. Если идеальный вес получается отрицательным, 
# то выводится строка "Ваш вес уже оптимальный"

puts "name?"
name = gets.chomp.capitalize

puts "growth?"
growth = gets.chomp.to_i

ideal_weight = growth - 110

if ideal_weight > 0
	puts "#{name}, your ideal weight: #{ideal_weight}"
else
	puts "#{name}, your weight is already optimal"
end