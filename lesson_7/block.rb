
a = Proc.new { |x| x = x * 10; puts x }
puts a.class

# лучше использовать этот способ
b = proc { |x| x = x * 10; puts x }
puts b.class

c = lambda { |x| x = x * 10; puts x }
c.call(5)

# ->(x) { puts x } это то же самое, что и lambda { |x| puts x }, только короче
# лучше использовать этот способ
d = ->(x) { x = x * 10; puts x }
d.call(10)


x = 'hello'
block = proc { puts x }

def m(block)
  x = 'goodbye'
  puts "X from method: #{x}"
  block.call
end

m(block)


# передача блока в метод
def caps(str)
  str.capitalize!
  yield(str)
end

caps('abc') { |str| puts str[0] }
caps('abc') do 
  |str| puts str[0] 
  puts str[1]
end

# передача блока как именнованного аргумента
def caps(str, block)
  str.capitalize!
  block.call(str)
end

block = lambda { |x| puts x }
caps 'abc', block

# передача блока как именнованного аргумента c обычным синтаксисиом
#блок делаем последним аргументом и с &
def caps(str, &block)
  str.capitalize!
  block.call(str)
end

caps('abc') { |x| puts x }

# определить передан блок или нет
def m(str, &block)
  if block_given?
    yield(str)
  else
    puts str
  end
end

m('abc')
m('abc') { |x| x.capitalize!; puts x }