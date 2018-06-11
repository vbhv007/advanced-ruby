require '../lib/method_calling.rb'
puts 'Enter any string:'
str = NewClass.new(gets.chomp)
puts 'Object Created! Please select any method from given below:'
puts NewClass.instance_methods(false)
method_name = gets.chomp
if NewClass.method_defined?(method_name)
  if ((str.method(method_name.to_sym).arity).zero?)
    puts str.send(method_name)
  else
    puts 'Enter arguments seprated by single space'
    args = gets.chomp.split(' ')
    puts str.send(method_name, *args)
  end
else
  puts str.send(method_name)
end
