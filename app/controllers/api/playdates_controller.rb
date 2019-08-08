class Api::PlaydatesController < ApplicationController
  def index
    location=params["location"]
    term=params["term"]
    categories=params["categories"]
    @playdates = HTTP.get("https://api.yelp.com/v3/businesses/search?location=#{location}&term=#{term}&categories=#{categories}",headers:{Authorization: "Bearer #{ENV["API_KEY"]}"})
    
    render 'index.json.jb'
  end
end