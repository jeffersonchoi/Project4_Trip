class Itinerary < ActiveRecord::Base
  has_many :events
  belongs_to :attraction
  belongs_to :user
end
