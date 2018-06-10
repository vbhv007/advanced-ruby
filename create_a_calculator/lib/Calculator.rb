# this is class calculator
class Calculator
  def self.calculate(str)
    instance_eval str
  end
end
