require 'httparty'

module ChuckJokeWrapper
  BASE_URL = 'https://api.icndb.com/'

  # gets a random joke from the API
  # http://api.icndb.com/jokes/random
  def self.random
    HTTParty.get(BASE_URL + 'jokes/random?exclude=[explicit]').parsed_response
  end

  def self.nerdy
    HTTParty.get(BASE_URL + 'jokes/random?limitTo=[nerdy]').parsed_response
  end

  def self.find_joke(id)
    HTTParty.get(BASE_URL + "jokes/#{id}").parsed_response
  end
end