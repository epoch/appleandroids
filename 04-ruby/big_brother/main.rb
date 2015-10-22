# create if not exist else append
db = File.new('database.txt', 'a+') 

print "Input person and save to a file (y/n) "
response = gets.chomp.downcase

while response == 'y'

  print 'Enter name, age, gender: '
  response = gets.chomp.downcase
  db.puts(response)

  print 'Input person and save to file (y/n) '
  response = gets.chomp.downcase

end

