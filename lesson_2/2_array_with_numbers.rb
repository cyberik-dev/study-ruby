# Заполнить массив числами от 10 до 100 с шагом 5

arr = []

(10..100).each {|item| arr << item if item % 5 == 0}

puts arr