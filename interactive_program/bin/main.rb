require '../lib/interactive.rb'
ob = Interactive.new
puts 'Enter the code or q for quit'
binding_obj = ob.bind_this
print '>>'
input = gets
code = ''

until input =~ /^q$/
  if input.eql?("\n")
    puts ob.eval_this(code, binding_obj)
    code = ''
  else
    code += input
  end
  print '>>'
  input = gets
end
