require 'httparty'
require 'uri'

class Photo
  BASE_URL = 'https://api.flickr.com/services/rest/'

  attr_reader :title, :url

  def initialize(photo_hash)
    @title = photo_hash["title"]
    @id = photo_hash["id"]
    @secret = photo_hash["secret"]
    @server = photo_hash["server"]
    @farm = photo_hash["farm"]
    @url = get_url(@id, @secret, @server, @farm)
  end

  def self.find_photo(search)
    photos = HTTParty.get(BASE_URL + URI.escape("?method=flickr.photos.search&sort=relevance&format=json&text=#{search}&per_page=10&nojsoncallback=1&api_key=" + ENV["FLICKR_KEY"])).parsed_response
    return self.find_photo("Chuck Norris") if photos["photos"]["photo"].empty?
    new(photos["photos"]["photo"].sample)
  end

  private

  def get_url(id, secret, server, farm)
    "https://farm#{farm}.staticflickr.com/#{server}/#{id}_#{secret}.jpg"
  end
end