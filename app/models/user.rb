class User < ActiveRecord::Base
  has_many :itineraries
  has_many :events, through: :itineraries

  has_secure_password
end
