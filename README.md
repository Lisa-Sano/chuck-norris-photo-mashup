# chuck-norris-photo-mashup

Website goals: create a small Rails app that delivers a Chuck Norris joke along with a Flickr Photo.  The photo will be obtained by first determining which terms in the Chuck Norris joke are nouns and then sampling from them to create a query for Flickr's photo search.

Target audience: me and anyone else who thinks Chuck Norris jokes are damn hilarious

Learning goals: get more practice using API's and making rails apps with good patterns

Technologies/frameworks/patterns:
- Ruby on Rails
- RESTful patterns
- Heroku deployment

Tech/skill dependencies:
- Ruby gem (EngTagger, https://github.com/yohasebe/engtagger)
- API's returning JSON (http://www.icndb.com/api/, https://www.flickr.com/services/api/)

I will be done and successful when any user visiting the site can see a Chuck Norris joke with a picture that is somewhat related to the content of the joke. There should also be an obligatory photo of Chuck Norris and a button to get another joke/picture.
