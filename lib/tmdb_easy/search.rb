module TmdbEasy
  class Search < Base
    def self.movie(keyword, lang = 'en')
      method_request = base_api_url + "search/movie?api_key=#{@@api_key}&query=#{keyword}&language=#{lang}"

      uri = URI.parse(method_request)
      tmdb_response = Net::HTTP.get_response(uri).body
      json_response = JSON(tmdb_response)
      movies = DeepOpenStruct.load(json_response).results
    end
  end
end
