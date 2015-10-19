require 'pry'

age = 62
# guess my age
# repeatly allow the user to guess
# print out wow how did you know when they guess it right


# getting input
puts 'make a guess'
input = gets.chomp.to_i

binding.pry # debugger

while input != age
 # get the input
 puts 'make a guess'
 input = gets.chomp.to_i
end

puts 'wow how did you know'


dumplings_devoured = 0

begin
  puts 'eat dumpling'
  dumplings_devoured += 1
end while (dumplings_devoured > 5000)

# until ()
# end

while !bank_account.empty?
  puts 'party on'
end

until bank_account.empty?
  puts 'party on'
end


