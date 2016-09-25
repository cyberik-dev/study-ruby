# eval - выполняет строку кода
# instance_eval - можно изменить объект
# instance_exec который работает так же как и instance_eval, но может принимать аргументы
# class_eval позволяет вставить код внутри класса, добавить инстанс методы или через self методы класса
# module_eval - для изменения модулей
# remove_method :reverse - удаляет метод
# method_missing(method name, *args)если метод отсутствует

# динамическое опеределение метода
class Y
  define_method(:my_method) do
    puts "my method"
  end
end

y = Y.new
y.my_method

# динамическое создание метода, в случае его отсутствия
class X
  def method_missing(name, *args)
    # вызываем публичный метод
    self.class.send(:define_method, name.to_sym, ->(*args) {puts args.inspect})
  end
end

x = X.new
x.xyz
x.abc
x.abc 1,2,3
print x.public_methods


# class Foo
#   def initialize
#     @bar = "instance var"
#   end

#   private

#   def private_method
#     puts "I'm private method"
#   end
# end

# пишем свой аналог attr_accessor 
module MyAttrAccessor
  def my_attr_accessor(*names)
    names.each do |name|
      var_name = "@#{name}".to_sym
      define_method(name) { instance_variable_get(var_name) } # геттер
      # сеттер
      define_method("#{name}=".to_sym) { |value| instance_variable_set(var_name, value) }
    end
  end
end

class Test
  extend MyAttrAccessor

  my_attr_accessor :my_attr, :a, :b, :c
end
