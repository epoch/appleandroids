# var heroic = true;

# function do_something_heroic() {
  
# }

# if (heroic == true) {
#   do_something_heroic();
# }

heroic = true

def do_something_heroic
  puts "hello"
end

if heroic
  do_something_heroic
end

if heroic != true
  do_something_heroic
end

if !heroic
  do_something_heroic
end

do_something_heroic if heroic

unless heroic
  do_something_heroic
end

do_something_heroic unless heroic

delicious = true
healthy = false

if delicious && healthy
  "eat cake"
end

if delicious == true && healthy == true
  "eat cake"
end
