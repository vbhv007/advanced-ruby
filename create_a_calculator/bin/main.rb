require '../lib/Calculator.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
arg = ARGV[0].gsub(':', '').split(',')
puts Calculator.calculate(arg[0].to_i, arg[1], arg[2].to_i)
