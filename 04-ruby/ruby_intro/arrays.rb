numbers = [1,2,3,4] # im obviously an array

numbers.push 5

numbers << 6 # append / shovel

numbers.pop

numbers.each do |number|
  puts "i am number " + number.to_s
end

numbers.each do |number|
  puts "i am number #{ number }" 
end

# arrays ex

# days_of_the_week = 'monday tuesday wedsnesday thursday friday saturday sunday'.split(' ')

days_of_the_week = %w{monday tuesday weds thurs fri sat sun }

temp_day = days_of_the_week.pop
days_of_the_week.unshift(temp_day)

# days_of_the_week.unshift(days_of_the_week.pop)

days_of_the_week = [ ['monday','tue','wed','thurs'],['sat', 'sun'] ]

# days_of_the_week.shift

days_of_the_week.delete_at(0)

sorted_days = days_of_the_week.flatten!

p sorted_days