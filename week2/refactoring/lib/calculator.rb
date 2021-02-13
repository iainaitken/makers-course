class Calculator
  def add(number_1, number_2)
    result = number_1 + number_2
    Printer.new.print(result)
  end
end

class Printer
  def print(result)
    header = "The result is: "
    puts("#{header}#{result}")
  end
end
