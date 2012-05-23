require "./lib/tmdb_easy"

TmdbEasy::Base.api_key=("f89492d116074ec340563aad0fcea52c")
xml = TmdbEasy::Movie.search("zzzzzzzzz", "en", "xml")
json = TmdbEasy::Movie.search("transformer")

puts xml[1]
puts json[1]


