# this is class ShoppingList
class ShoppingList
  def initialize
    @list = Hash.new(0)
  end

  def items(&block)
    instance_eval(&block)
  end

  def show_list
    @list
  end

  def add(item, quantity)
    @list[item] += quantity
  end
end
