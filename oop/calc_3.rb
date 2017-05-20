# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.
$LOAD_PATH << '.'
require 'calc_3_module'

class SimpleCalculator
  include Calculator
end

class FancyCalculator
  include Calculator
end



class WhizBangCalculator
  include Calculator
  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

calculator = SimpleCalculator.new
if calculator.add(5, 5) == 10
  puts "Pass!"
else
  puts"Fail!"
end

if calculator.subtract(10, 5) == 5
  puts "Pass!"
else
  puts"Fail!"
end

if calculator.multiply(5, 5) == 25
  puts "Pass!"
else
  puts"Fail!"
end

if calculator.divide(10, 5) == 2
  puts "Pass!"
else
  puts"Fail!"
end

calculator_2 = FancyCalculator.new

if calculator_2.add(5, 5) == 10
  puts "Pass!"
else
  puts"Fail!"
end

if calculator_2.subtract(10, 5) == 5
  puts "Pass!"
else
  puts"Fail!"
end

if calculator_2.multiply(5, 5) == 25
  puts "Pass!"
else
  puts"Fail!"
end

if calculator_2.divide(10, 5) == 2
  puts "Pass!"
else
  puts"Fail!"
end

if calculator_2.square_root(100) == 10.0
  puts "Pass!"
else
  puts"Fail!"
end

calculator_3 = WhizBangCalculator.new

if calculator_3.add(5, 5) == 10
  puts "Pass!"
else
  puts"Fail!"
end

if calculator_3.subtract(10, 5) == 5
  puts "Pass!"
else
  puts"Fail!"
end

if calculator_3.multiply(5, 5) == 25
  puts "Pass!"
else
  puts"Fail!"
end

if calculator_3.divide(10, 5) == 2
  puts "Pass!"
else
  puts"Fail!"
end

if calculator_3.square_root(100) == 10.0
  puts "Pass!"
else
  puts"Fail!"
end

if calculator_3.hypotenuse(4, 20) == 20.396078054371138
  puts "Pass!"
else
  puts"Fail!"
end

if calculator_3.exponent(10, 2) == 100
  puts "Pass!"
else
  puts"Fail!"
end