require 'chuck'

class MashupsController < ApplicationController

  def index
    @joke = ChuckJokeWrapper.random
    @photo = Photo.find_photo("sky")
  end

  # make a show page for specific jokes (debugging purposes)
  def show
    @joke = ChuckJokeWrapper.find_joke(params[:id])
    render :index
  end
end
