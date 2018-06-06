# this is class calculator
class Calculator
  def self.calculate(a, e, operator)
    a.send(operator, e)
  end
end
