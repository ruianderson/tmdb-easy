require "./lib/tmdb_easy"

TmdbEasy::Base.api_key = "f89492d116074ec340563aad0fcea52c"
genre_list = TmdbEasy::Genre.list
movies_per_genre = TmdbEasy::Genre.genre_movies 18

puts genre_list
puts "---------------------------------------------------------------------------"
puts movies_per_genre
puts "---------------------------------------------------------------------------"

