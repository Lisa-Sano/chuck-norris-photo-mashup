require 'tagger'

describe Tagger do
  it "returns a noun phrase from a given string in an Array" do
    text = "Alice chased the big fat cat"

    noun_phrase = Tagger.get_keywords(text)

    assert_instance_of String, noun_phrase
    assert_includes ["Alice", "cat", "fat cat", "big fat cat"], noun_phrase
  end

  it "removes punctuation before getting keywords" do
    text = "Alice! chase,d the b.ig 'f'a't' cat."

    noun_phrase = Tagger.get_keywords(text)

    assert_includes ["Alice", "cat", "fat cat", "big fat cat"], noun_phrase
  end

  it "removes Chuck Norris from the search terms before getting keywords" do
    chuck = "Chuck Norris noun"

    noun_phrase = Tagger.get_keywords(chuck)

    assert_equal "noun", noun_phrase
  end

  it "returns a default value of Chuck Norris if no other noun phrases are found" do
    no_nouns = "drop-kicked"

    noun_phrase = Tagger.get_keywords(no_nouns)

    assert_equal "Chuck Norris", noun_phrase
  end

  it "returns a default value of Chuck Norris if the chosen noun phrase contains a &" do
    encoded_phrase = "ki&cked"

    noun_phrase = Tagger.get_keywords(encoded_phrase)

    assert_equal "Chuck Norris", noun_phrase

  end
end