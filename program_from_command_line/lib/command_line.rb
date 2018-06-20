# this is class Dynamic class
class DynamicClass
  def initialize(class_name)
    @class_name = Object.const_set(class_name, Class.new)
  end

  def def_method(method_name, method_body)
    @class_name.class_eval do
      define_method(method_name) do
        puts instance_eval(method_body)
      end
    end
    puts "Hello, Your class #{@class_name} with method #{method_name} is ready."
    puts "Calling: #{@class_name}.new.#{method_name}:"
  end

  def calling_new_method(method_name)
    @class_name.new.send(method_name)
  end
end
