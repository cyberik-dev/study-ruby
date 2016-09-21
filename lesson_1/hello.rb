puts "Как тебя зовут?"
name = gets.chomp

puts "Твой год рождения?"
year = gets.chomp

puts "#{name}, привет! Тебе #{2016 - year.to_i} лет"