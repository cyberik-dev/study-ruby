# расширяем стандартный класс String

class String
  # возвращает случайную строку
  def self.random(length)
    rand(36**length).to_s(36)
  end

  # добавляем свой метод
  def my_method
    capitalize
  end

  # изменяем стандартный метот конкатенации
  def <<(value)
    "#{self} #{value}"
  end
end

puts 'srt'.my_method
puts 'str' << 'abc'
puts String.random(34)