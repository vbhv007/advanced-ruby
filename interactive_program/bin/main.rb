require '../lib/interactive.rb'
ob = Interactive.new
puts 'Enter the code or q for quit'
binding_obj = ob.bind_this
code = ''

loop do
  print '>>'
  input = gets
  break if input =~ /^q$/
  if input.eql?("\n")
    puts ob.eval_this(code, binding_obj)
    code = ''
  else
    code += input
  end
end
