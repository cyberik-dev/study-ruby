puts "Hello, we need a Date \nin format: DD/MM/YYYY \nplease enter the day"
day = gets.chomp.to_i
puts "ok, now type Two-digit month"
month = gets.chomp.to_i
puts "Great, last thing is year"
year = gets.chomp.to_i

require 'date'	
day_of_the_year = Date.new(year,month,day).strftime("%j")

puts "Day of the year: #{day_of_the_year}"

