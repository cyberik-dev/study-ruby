# Заполнить хеш гласными буквами, где значением будет являтся порядковый
# номер буквы в алфавите (a - 1)

vowels = {}

('a'..'z').each_with_index do |key, index|
  vowels[key] = index + 1 if %w(a e o u i y).include?(key)
end

puts vowels