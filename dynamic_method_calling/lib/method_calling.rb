# this is class NewClass
class NewClass < String
  def exclude?(item)
    !(include? item[0])
  end

  def reverse_this
    reverse
  end

  def second_method(arg1)
    puts "This is method two with args #{arg1}"
  end

  def third_method(arg1, arg2)
    puts "This is method three with args #{arg1} & #{arg2}"
  end
  private
    def method_missing(name, *rest)
      puts "This method #{name} is not defined"
    end
end
