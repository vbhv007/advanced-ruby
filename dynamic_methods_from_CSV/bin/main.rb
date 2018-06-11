require '../lib/dynamic_csv.rb'

puts 'Enter the name of the csv file(without .csv)'
csv_name = gets.chomp
ob = DynamicCSV.new(csv_name)
ob.show_csv('name')
ob.show_csv('age')
ob.show_csv('city')
