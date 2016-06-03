class Mashup < ActiveRecord::Base

  def add_favorite
    self.favorites += 1
  end

end
