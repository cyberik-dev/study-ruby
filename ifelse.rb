puts "Ведите число 1"
num_1 = gets.chomp
num_1 = num_1.to_i

puts "Ведите число 2"
num_2 = gets.chomp
num_2 = num_2.to_i

if num_1 > num_2
	puts 'число 1 > числа 2'
elsif num_1 < num_2
	puts 'число 2 > числа 1'
else
	puts 'число 1 = числу 2'
end
