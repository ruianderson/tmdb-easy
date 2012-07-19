module TmdbEasy
  class Search < Base
    def self.movie(keyword, lang = 'en')
      method_request = url_base + "search/movie?api_key=#{@@api_key}&query=#{keyword}&language=#{lang}"

      uri = URI.parse(method_request)
      http_response = Net::HTTP.get_response(uri).body
      movies_response = JSON(http_response)
    end
  end
end
