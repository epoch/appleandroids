class Apartment

  attr_accessor :renters
  # attr_reader :renters

  def initialize(price, is_occupied)
    @price = price
    @is_occupied = is_occupied
    @renters = []
  end

  def add_renter(person)
    @renters << person
  end

end