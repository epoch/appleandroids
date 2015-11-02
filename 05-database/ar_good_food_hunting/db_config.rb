require 'active_record'

options = {
  adapter: 'postgresql',
  username: 'daniel', # you prob dont need this
  database: 'goodfoodhunting'
}

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || options)