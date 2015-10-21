require 'pry'
require './person'
require './apartment'

p1 = Person.new('dt',62)

a1 = Apartment.new(1000, false)

a1.add_renter(p1)


binding.pry