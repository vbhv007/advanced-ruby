require '../lib/shopping_list.rb'

s1 = ShoppingList.new

s1.items do
  add('Toothpaste', 2)
  add('Computer', 1)
end

puts s1.show_list
