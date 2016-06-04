require 'engtagger'

module Tagger
  def self.get_keywords(joke)
    # remove non-word characters & 'Chuck Norris' from joke
    search_text = Tagger.substitute(joke)

    tgr = EngTagger.new
    tagged_joke = tgr.add_tags(search_text)
    noun_phrases = tgr.get_noun_phrases(tagged_joke).keys
    # noun_phrases.max_by { |noun| noun.length}
    a_phrase = noun_phrases.sample
    return a_phrase unless (a_phrase.nil? || a_phrase.include?("&"))

    # if there are no noun_phrases pulled out from the joke, return Chuck Norris as photo search term
    "Chuck Norris"
  end

  private

  def self.substitute(joke)
    alt_text = joke.gsub(/[\.\,\?!"']/, '')
    alt_text.gsub!("Chuck Norris", '')
    alt_text
  end
end