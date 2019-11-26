require 'rubygems'
require 'httparty'
#require 'json'

class Sportradar
  include HTTParty 
  base_uri "api.sportradar.us/"

  def posts
    self.class.get('/americanfootball/trial/v2/en/players/sr:player:834683/summaries.json?api_key=q4xs5np78xysa8j3fv62md9h')
  end
end

sport_radar = Sportradar.new
  #puts sport_radar.posts

 sport_radar.posts.each do |post|
  p "Game: #{post[1][2]}"
 end


