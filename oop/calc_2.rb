# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
$LOAD_PATH << '.'

require 'cal_2_module'

class SimpleCalculator
  include Calculator
end

class FancyCalculator
  include Calculator
  def square_root(number)
    Math.sqrt(number)
  end
end

# Copy your driver code from the previous exercise below:

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
