# attractions = Yelp.client.search('Los Angeles', {term: 'attractions'})
#
# attractions.each do |attraction|
#
#   if attraction["business"]["name"]
#
#     attraction = Attraction.create([
#       attraction_name: attraction["business"]["name"]
#
#       ])
#
#   end
#
# end



User.create([
  {first_name: "User 1"},
  {first_name: "User 2"},
  {first_name: "User 3"}
  ])

Attraction.create([
  {attraction_name: "Attraction 1"},
  {attraction_name: "Attraction 2"},
  {attraction_name: "Attraction 3"}
  ])




User.all.each do |user|

  Attraction.all.each do |attraction|

    Itinerary.create(user_id: user.id, attraction_id: attraction.id)

 end

end

Itinerary.all.each do |itinerary|
    Event.create(itinerary_id: itinerary.id)
    Event.create(itinerary_id: itinerary.id)
end
