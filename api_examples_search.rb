require "./lib/tmdb_easy"

TmdbEasy::Base.api_key = "f89492d116074ec340563aad0fcea52c"
movies = TmdbEasy::Search.movie "transformer"
people = TmdbEasy::Search.person "bruno"
companies = TmdbEasy::Search.company "net"

puts movies
puts "---------------------------------------------------------------------------"
puts people
puts "---------------------------------------------------------------------------"
puts companies

