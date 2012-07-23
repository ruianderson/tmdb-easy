module TmdbEasy
  class Genre < Base
    def self.list(lang = 'en')
      method_request = base_api_url + "genre/list?api_key=#{@@api_key}&language=#{lang}"

      uri = URI.parse(method_request)
      tmdb_response = Net::HTTP.get_response(uri).body
      json_response = JSON(tmdb_response)
      genre_list = DeepOpenStruct.load(json_response).genres
    end
  end
end
