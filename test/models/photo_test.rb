require 'test_helper'

describe Photo do

  it "returns an instance of Photo when a search term is given", :vcr do
    photo = Photo.find_photo("sky")

    assert_instance_of Photo, photo
  end

  it "still returns a photo even if an empty string is given as a search term", :vcr do
    empty_search = Photo.find_photo("")

    assert_instance_of Photo, empty_search
  end

  it "still returns a default photo even if a non-matching search term is given", :vcr do
    # "!@!@^&*" was previously tested as a Flickr photo search term and gave no results
    random = Photo.find_photo("!@!@^&*")

    assert_instance_of Photo, random
    assert_equal "https://farm9.staticflickr.com/8374/8488371245_738f0c3754.jpg", random.url
  end
end