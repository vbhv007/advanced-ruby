require '../lib/Calculator.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
arg = ARGV[0].gsub(/[,:]/, '')
puts Calculator.calculate(arg)
