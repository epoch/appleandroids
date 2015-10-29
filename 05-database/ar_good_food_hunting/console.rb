require 'active_record'
require 'pry'

# show the sql in the terminal
ActiveRecord::Base.logger = Logger.new(STDERR)

require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/dish_type'

binding.pry
