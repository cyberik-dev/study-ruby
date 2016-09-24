module Test
  def fill
    puts 'fill';
  end

  class B
    def met_b
      puts 'met_b'
    end
  end
end

class MegaGreeter
  include Test

  attr_accessor :names

  # constructor
  def initialize(names = 'World')
    @names = names
  end

  # say hi
  def say_hi
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('each')
      # @names is a list of some kind
      self.names.each do |name|
        puts "Hello #{name}!" 
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # say bay to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # join the list elements
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end

end

mg = MegaGreeter.new
mg.say_hi
mg.say_bye

mg.names = 'Vova'
mg.say_hi
mg.say_bye


mg.names = ['Vasia', 'Kola', 'Marina', 'Viktor']
mg.say_hi
mg.say_bye

mg.names = nil
mg.say_hi
mg.say_bye


mg.fill
