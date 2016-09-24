# инкремент
i = 0
i += 1

# множественное присваивание
x, y = 1, 2

# присвоить пременным значения из массива
array = [1,2,3]
a, b, c = array

# обмен значений переменных без 3й переменной
x, y = y, x

# оператор ||= присваивает значение переменной, если она не инициализирована (nil или false)
z = 1
z ||= 2 # не выполнится, так как z уже проинициализирована


class Foo
  # значение по уполчанию, если нет такого ключа в хеше
  def bar(key)
    h = { a: 1, b: 2 }
    value = h[key]
    value ||= 0 # ключа нет, то по умолчанию будет 0 
    # ... используем value
  end

  # мемоизация - кэширование работы метода
  def long_method
    sleep(3)
  end

  def memoization
    @m ||= long_method # метод выполнится только в первый раз, а после будет возвращать вычисленное в первый раз значение
  end
end


class User
  attr_accessor :name

  # сделать метод предикат, который возвращает true или false
  def name?
    !!name # вернет true или false
  end

  def ot_name? # если нужен предикат наоборот, то используем первый метод с !
    !name?
  end

  # переопределяем сеттер по умолчанию  
  def name=(value)
    @name = value.capitalize
  end
end

# запись строковых массивов
fruits = %w(apple orange grape)

# вместо 
fruits.map { |f| f.upcase }
# можно писать + так раз в 20 быстрее работает
fruits.map(&:upcase)

# чтобы сократить case when используем хеш + работает быстрее
class Color
  COLORS = { red: '#f00', green: '#0f0', blue: '#00f', white: '#fff' }

  def code(name)
    @code = COLORS[name] || '#000'
  end

  alias_method :by_name, :code # псевдоним метода (новое, старое название)
end

# возможна передача хеша без скобок
#m({a: 1, b: 2}) # обычный со скобками
#m(a: 1, b: 2) # вариант без скобок



class Train
  attr_accessor :type, :model, :number, :number_of_wagons

  # передача поизвольного количества аргументов
  def initialize(number, *args)
    @number = number
    @type = args[0] || 'Unknown'
    @model = args[1] || 'Unknown'
    @number_of_wagons = args[2] || 0
  end

  # более красивый вариант с хешем + не важен порядок
  def initialize(number, options = {})
    @number = number
    @type = options[:type] || 'Unknown'
    @model = options[:model] || 'Unknown'
    @number_of_wagons = options[:number_of_wagons] || 0
  end
end

t = Train.new('123', number_of_wagons: 5, type: 'cargo', model: 'FZ-56')
puts t.type

# синглтон метод

foo = Foo.new

# добавляем метод только к объекту foo
class << foo
  def m 
    puts 'Only for one object'
  end
end

foo.m

