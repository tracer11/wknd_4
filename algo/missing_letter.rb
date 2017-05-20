# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
   seperated_range = range.chars
   control = (seperated_range.first..seperated_range.last).to_a
   missing_letter = ""
   included_letters = ""
   control_2 = nil 
   boolean = false
  
   control.each do |letter|
    if seperated_range.include?(letter)
      included_letters << letter
    elsif included_letters == range
        control_2 = nil
        boolean = false
    else
      missing_letter << letter
      boolean = true
    end
   end
   
   if boolean == true
       missing_letter
    elsif boolean == false
      control_2
  end
end
#Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end

#bonus
result = find_missing_letter("abefg")

puts "Your method returned:"
puts result
puts

if result == "cd"
  puts "PASS!"
else
  puts "F"
end
