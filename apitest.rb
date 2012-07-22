require "./lib/tmdb_easy"

TmdbEasy::Base.api_key = "f89492d116074ec340563aad0fcea52c"
search = TmdbEasy::Search.movie "transformer"

puts search

