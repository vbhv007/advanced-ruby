# this is class Dynamic class
class DynamicClass
  def initialize(class_name, method_name, method_body)
    @class_name = Object.const_set(class_name, Class.new)
    @method_name = method_name
    @method_body = method_body
  end

  def def_method
    @class_name.class_eval("def #{@method_name}; #{@method_body}; end")
    puts "Hello, Your class #{@class_name} with method #{@method_name} is ready. Calling: #{@class_name}.new.#{@method_name}"
  end

  def calling_new_method
    puts @class_name.new.send(@method_name)
  end
end
