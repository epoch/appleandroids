class Person
  attr_reader :name

  # contructor
  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    "the name is: #{@name} #{@age}"
  end

end