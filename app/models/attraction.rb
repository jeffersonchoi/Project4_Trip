class Attraction < ActiveRecord::Base
  has_many :itineraries
end
