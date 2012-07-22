module TmdbEasy
  class Search < Base
    def self.movie(keyword, lang = 'en', adult = false)
      method_request = base_api_url + "search/movie?api_key=#{@@api_key}&query=#{keyword}&language=#{lang}&include_adult=#{adult}"

      uri = URI.parse(method_request)
      tmdb_response = Net::HTTP.get_response(uri).body
      json_response = JSON(tmdb_response)
      movies = DeepOpenStruct.load(json_response).results
    end

    def self.person(keyword, adult = false)
      method_request = base_api_url + "search/person?api_key=#{@@api_key}&query=#{keyword}&include_adult=#{adult}"

      uri = URI.parse(method_request)
      tmdb_response = Net::HTTP.get_response(uri).body
      json_response = JSON(tmdb_response)
      people = DeepOpenStruct.load(json_response).results
    end
  end
end
