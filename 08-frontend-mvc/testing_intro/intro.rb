# if statement
# require pry
# write a function
# get input
# print the answer
# ran it 4 times to test
# repl

# year = gets.chomp

# if year % 4 == 0
#   puts 'true'
# end



def plus_one(num)
  num + 1
end

# num is 5 => 6
# num is 15 => 16
# num is -2 => -1

# if plus_one(5) == 6
#   puts 'pass'
# else
#   puts 'fail'
# end

 def leap_year?(num)
 if num%4 == 0 && num%100 != 0  
    true
 elsif num%400 == 0 
    true
 elsif num%4 == 0 && num%100 == 0 && num%400 != 0 
    false
  elsif num%4 != 0 
    false
  end
end 

# my testing framework
def test(expected, actual, message = '')
  if expected == actual
    puts "pass - #{message}"
  else
    puts "fail - #{message}"
  end
end

test( 6, plus_one(5) )
test( 16, plus_one(15) )

test true, leap_year?(2000), "testing year 2000"
test false, leap_year?(1997)
test false, leap_year?(1900)
test true, leap_year?(1996)



