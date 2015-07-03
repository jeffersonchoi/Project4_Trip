attractions = HTTParty.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=attractions+in+Los+Angeles&key=#{ENV['google_api_key']}")



attractions["results"].each do |attraction|

  if attraction["name"]
    if attraction["geometry"]
      # if attraction["geometry"]["location"]["long"]

    attraction = Attraction.create([
      attraction_name: attraction["name"],
      latitude: attraction["geometry"]["location"]["lat"],
      longitude: attraction["geometry"]["location"]["lng"],
      address: attraction["formatted_address"]
      # attraction["types"].each do |types|
      # type: attraction["types"][0]
      # end
      ])
      # end
    end
  end

end



User.create([
  {first_name: "User 1"},
  {first_name: "User 2"},
  {first_name: "User 3"}
  ])

# Attraction.create([
#   {attraction_name: "Attraction 1"},
#   {attraction_name: "Attraction 2"},
#   {attraction_name: "Attraction 3"}
#   ])




User.all.each do |user|

  Attraction.all.each do |attraction|

    Itinerary.create(user_id: user.id, attraction_id: attraction.id)

 end

end

Itinerary.all.each do |itinerary|
    Event.create(itinerary_id: itinerary.id)
    Event.create(itinerary_id: itinerary.id)
end
