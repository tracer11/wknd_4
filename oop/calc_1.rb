# Below, we have two types of calculators. The simple one can perform basic arithmetic, 
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is 
# a fundamental concept in OOP known as Inheritance. Your exercise is to research 
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code 
# below. You must also write the driver code to test your classes.

class Calculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class SimpleCalculator < Calculator

end

class FancyCalculator < Calculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Write your own driver code below:

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


