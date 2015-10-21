require 'pry'


# hash - data structure 
fish = {
  name: 'fishy fish',
  health: 100,
  speed: 5
}

fish2 = {
  name: 'fishy fish 2',
  health: 100,
  speed: 5
}

shark = {
  name: 'sharky shark',
  health: 5000,
  speed: 300
}

ocean_world = []
ocean_world << fish << shark


def fish_sleep(fish)
  fish[:health] = 100
end

def shark_sleep(shark)
  shark[:health] = 5000
end

# factory / template
class Fish
  attr_reader :name
  attr_accessor :health

  def initialize(name, health)
    if name()
      @name = name
    else
      @name = 'fishy fish'
    end

    @health = health
    @speed = 300
  end

  def sleep
    @health = @health + 10
  end

  def set_name(new_name)
    @name = new_name
  end

  def name=(new_name)
    @name = new_name
  end

end


class Shark  
end

binding.pry