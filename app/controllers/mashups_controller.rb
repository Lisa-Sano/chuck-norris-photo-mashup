require 'chuck'
require 'tagger'

class MashupsController < ApplicationController

  def index
    @joke = ChuckJokeWrapper.random["value"]["joke"]
    @search_term = Tagger.get_keywords(@joke)
    @photo = Photo.find_photo(@search_term)
  end

  def nerdy
    @joke = ChuckJokeWrapper.nerdy["value"]["joke"]
    @search_term = Tagger.get_keywords(@joke)
    @photo = Photo.find_photo(@search_term)
    render :index
  end

  def favorite
    @mashup = Mashup.find_or_create_by(joke: params[:joke], photo_url: params[:photo])
    @mashup.add_favorite
    redirect_to favorites_path
  end

  def favorites
    @mashups = Mashup.order(favorites: :desc)
  end
end
