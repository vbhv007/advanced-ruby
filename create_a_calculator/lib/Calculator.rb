# this is class calculator
class Calculator
  def self.calculate(a, operator, e)
    [a, e].inject(operator)
  end
end
