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