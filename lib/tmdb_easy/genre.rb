module TmdbEasy
  class Genre < Base
    def self.list(lang = 'en')
      method_request = base_api_url + "genre/list?api_key=#{@@api_key}&language=#{lang}"

      uri = URI.parse(method_request)
      tmdb_response = Net::HTTP.get_response(uri).body
      json_response = JSON(tmdb_response)
      genre_list = DeepOpenStruct.load(json_response).genres
    end

    def self.genre_movies(genre_id, lang = 'en')
      method_request = base_api_url + "genre/#{genre_id}/movies?api_key=#{@@api_key}&language=#{lang}"

      uri = URI.parse(method_request)
      tmdb_response = Net::HTTP.get_response(uri).body
      json_response = JSON(tmdb_response)
      movies_per_genre = DeepOpenStruct.load(json_response).results
    end
  end
end
