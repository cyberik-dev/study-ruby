puts "Как тебя зовут?"
name = gets.chomp

puts "В каком году ты родилась?"
year = gets.chomp

puts "#{name}, привет! Тебе #{2016 - year.to_i} лет"