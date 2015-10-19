require 'pry'


# new syntas for hashes
song1 = {
  title: 'hello',
  artist: 'Lionel Richie',
  released: 1983
}


# original syntax hashes
song2 = {
  :title => "nothings gonna change my love for you",
  :artist => 'glen medeiros',
  :released => 1986
}

song3 = {
  'title' => 'a whole new world',
  'artist' => 'disney',
  'released' => 1992
}


=begin

# like an array
song4 = {
  0 => 'hello',
  1 => 'world',
  2 => '!'
}

=end

binding.pry

