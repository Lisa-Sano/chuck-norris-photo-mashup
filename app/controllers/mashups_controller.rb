require 'chuck'
require 'tagger'

class MashupsController < ApplicationController

  def index
    @joke = ChuckJokeWrapper.random["value"]["joke"]
    @search_term = Tagger.get_keywords(@joke)
    @photo = Photo.find_photo(@search_term)
  end

  # make a show page for specific jokes (debugging purposes)
  def show
    @joke = ChuckJokeWrapper.find_joke(params[:id])
    render :index
  end
end
