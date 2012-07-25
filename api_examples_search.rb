require "./lib/tmdb_easy"

TmdbEasy::Base.api_key = "your_api_key"
movies = TmdbEasy::Search.movie "iron"
people = TmdbEasy::Search.person "garu"
companies = TmdbEasy::Search.company "net"

puts movies
puts "---------------------------------------------------------------------------"
puts people
puts "---------------------------------------------------------------------------"
puts companies

