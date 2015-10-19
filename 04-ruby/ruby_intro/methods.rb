

def defuse_bomb
  puts 'remove'
  puts 'first cut the red wire'
  puts 'then cut the blue'
end

defuse_bomb

def area(length, width)
  return length * width
end

def area length, width
  length * width
end

def defuse_bomb_again(time_left)
  if time_left > 60
    puts 'cut red wire'
    puts 'cut blue'
  else
    puts 'run'
  end

  return 'game over'
  puts 'what happens here????' # never happen
end

def h1(body)
  "<h1>#{body}</h1>"

  "<h1>" + body + "</h1>"
end


h1 "ruby methods are awesome"
