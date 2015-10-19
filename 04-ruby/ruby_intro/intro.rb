3.times do
  puts "beetlejuice"
end

# method - define method

# style underscore to break multiple words

def make_a_sentence(words)
  words.join(' ') + "!"
end

# function make_a_sentence() {

# }

puts(make_a_sentence(['you','are','already','experts']))

# no semicolons 

# parseInt("7")
# Number("7")
# +"7"

5.to_s

"5".to_i

# no var, local variables by default scope

first = "apple"
last = "android"

first + " " + last

"#{first} #{last}"

"#{3 + 4} #{last}"

some_variable = "donuts"

def some_method
  some_variable
end

puts some_variable

SOME_CONSTANT = "donuts"

