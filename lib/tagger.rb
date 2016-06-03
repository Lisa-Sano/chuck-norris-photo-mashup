require 'engtagger'

module Tagger
  def self.get_keywords(joke)
    # remove non-word characters from joke
    search_text = joke.gsub(/[\.\,\?!"']/, '')

    # remove Chuck Norris from the potential search terms
    search_text.gsub!("Chuck Norris", '')

    tgr = EngTagger.new
    tagged_joke = tgr.add_tags(search_text)
    nouns = tgr.get_nouns(tagged_joke).keys
    nouns.max_by { |noun| noun.length}
  end
end