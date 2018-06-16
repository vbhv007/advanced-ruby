require '../lib/interactive.rb'
ob = Interactive.new
puts 'Enter the code or q for quit'
bind_ob = ob.bind_this
ob.get_code('', bind_ob)
