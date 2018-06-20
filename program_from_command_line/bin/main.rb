require '../lib/command_line.rb'
puts 'Please enter the class name:'
class_name = gets.chomp
puts 'Please enter the method name you wish to define:'
method_name = gets.chomp
puts 'Please enter the method\'s code:'
method_body = gets.chomp
puts '--- Result ---'
ob = DynamicClass.new(class_name)
ob.def_method(method_name, method_body)
ob.calling_new_method(method_name)
