module TmdbEasy
  class Genre < Base
    def self.list(lang = 'en')
      action_request = base_api_url + "genre/list?api_key=#{@@api_key}&language=#{lang}"

      response = api_response(action_request)
      genre_list = DeepOpenStruct.load(response).genres
    end

    def self.genre_movies(genre_id, lang = 'en')
      action_request = base_api_url + "genre/#{genre_id}/movies?api_key=#{@@api_key}&language=#{lang}"

      response = api_response(action_request)
      movies_per_genre = DeepOpenStruct.load(response).results
    end
  end
end
