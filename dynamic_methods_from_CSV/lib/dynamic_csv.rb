# this is class dynamicCSV
require 'csv'
class DynamicCSV
  def initialize(name)
    @path = "../../#{name}"
    @objects = []
    create_class(name)
  end

  def create_class(name)
    @class_created = Object.const_set(name.capitalize, Class.new)
    read_csv
  end

  def read_csv
    file =  CSV.read("#{@path}.csv", headers: true)
    make_methods(file)
  end

  def make_methods(file)
    file.each do |item|
      ob = @class_created.new
      item.each do |a|
        ob.instance_variable_set("@#{a[0]}", a[1])
        ob.class.class_eval("def #{a[0]}; puts @#{a[0]}; end")
      end
      @objects << ob
    end
  end

  def show_csv(arg)
    @objects.each do |a|
      a.send(arg)
    end
  end
end
