require '../lib/String.rb'

instance1 = 'vbhv'
instance2 = 'lorem'

def instance1.hey
  puts "hey #{self}"
end

class << instance1
  def special_method
    puts "#{self} invoked special method"
  end
end

instance1.hey
instance1.special_method
instance2.hey
instance2.special_method
