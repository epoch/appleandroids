class User < ActiveRecord::Base
  has_secure_password # give us the password method, authenticate method
end