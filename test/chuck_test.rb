require 'test_helper'
require 'chuck'

describe ChuckJokeWrapper do

  describe "random joke" do
    before do
      @random = ChuckJokeWrapper.random
    end

    it "returns a Hash", :vcr do
      assert_instance_of Hash, @random
    end

    it "returns a Hash with 2 keys", :vcr do
      assert_equal 2, @random.length
    end

    it "returns a Hash with a key 'type'", :vcr do
      refute_nil @random["type"]
    end

    it "returns a Hash with a key 'value'", :vcr do
      refute_nil @random["value"]
    end

    it "the value of the key 'value' is a Hash", :vcr do
      assert_instance_of Hash, @random["value"]
    end

    it "the value of the key 'value' is a Hash with 3 keys", :vcr do
      assert_equal 3, @random["value"].length
    end

    it "the value of the key 'value is a Hash with the keys 'id', 'joke', and 'categories'", :vcr do
      refute_nil @random["value"]["id"]
      refute_nil @random["value"]["joke"]
      refute_nil @random["value"]["categories"]
    end

    it "returns an Array of categories that the joke belongs to", :vcr do
      assert_instance_of Array, @random["value"]["categories"]
    end
  end

  describe "nerdy joke" do
    before do
      @nerdy = ChuckJokeWrapper.nerdy
    end

    it "finds a joke with a category of 'nerdy'", :vcr do
      assert_includes @nerdy["value"]["categories"], "nerdy"
    end
  end
end