# Chuck Norris Photo Mashup

__Website goals:__ create a small Rails app that delivers a Chuck Norris joke along with a Flickr Photo.  The photo will be obtained by first determining which terms in the Chuck Norris joke are nouns and then sampling from them to create a query for Flickr's photo search.

__Target audience:__ me and anyone else who thinks Chuck Norris jokes are damn hilarious

__Learning goals:__ get more practice using API's and making rails apps with good patterns

__Technologies/frameworks/patterns:__
- Ruby on Rails
- RESTful patterns
- Heroku deployment

__Tech/skill dependencies:__
- Ruby gem ([EngTagger](https://github.com/yohasebe/engtagger))
- API's returning JSON ([Chuck Norris API](http://www.icndb.com/api/), [Flickr API](https://www.flickr.com/services/api/))

I will be done and successful when any user visiting the site can see a Chuck Norris joke with a picture that is somewhat related to the content of the joke. There should also be an obligatory photo of Chuck Norris and a button to get another joke/picture.

__What I learned:__
- The importance of testing (found multiple things broken that I thought were working!)
- Pagination
- Favicons
- Making the collapsable nav bar buttons work on small screens

__Challenges along the way:__
- Finding the best search queries for photos (a noun? multiple nouns? a noun phrase?)
- Dealing with photo searches that produced no results, or empty search queries from certain jokes
- Controller testing (had to bypass VCR and Webmock)
- Google Font/Favicon issues
- Customizing landing page templates is hard
