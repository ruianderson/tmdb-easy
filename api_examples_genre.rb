require "./lib/tmdb_easy"

TmdbEasy::Base.api_key = "your_api_key"
genre_list = TmdbEasy::Genre.list
movies_per_genre = TmdbEasy::Genre.genre_movies 18

puts genre_list
puts "---------------------------------------------------------------------------"
puts movies_per_genre
puts "---------------------------------------------------------------------------"

