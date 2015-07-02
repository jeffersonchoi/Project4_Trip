class AttractionsController < ApplicationController

  def index
    # @attractions = HTTParty.get("http://api.yelp.com/v2/search/?term=attractions&location=Los%20Angeles,%20CA")
    @attractions = Yelp.client.search('Los Angeles', {term: 'attractions'})

    # params = {
    #    term: 'attraction',
    #        limit: 3,
    #        category_filter: 'discgolf'
    #      }
    #
    #
    # client.search('Los Angeles', params)

    respond_to do |format|
     format.html {
       render
     }
     format.json {
       render json: @attractions
     }
   end


  end


end
