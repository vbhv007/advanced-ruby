require '../lib/Calculator.rb'

if ARGV[0].nil?
  puts 'Please provide an input'
  exit
end
arr = ARGV[0].split(',')
puts Calculator.calculate(arr[0].to_i, arr[2].to_i, arr[1][1])
