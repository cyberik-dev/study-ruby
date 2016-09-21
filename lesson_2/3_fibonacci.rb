# Заполнить массив числами фибоначи до 100

arr = Array.new(100)

for i in 0..100
  if i < 2
    arr[i] = 1
  else
    arr[i] = arr[i-2] + arr[i-1]
  end  
end

puts arr
