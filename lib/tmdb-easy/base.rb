module TmdbEasy
  class Base
    @@api_key = ""

    def self.api_key
      @@api_key
    end

    def self.api_key=(api_key)
      @@api_key = api_key
    end

    def self.base_api_url
      'http://api.themoviedb.org/3/'
    end

    protected
    def self.api_response(action_request)
      uri = URI.parse(action_request)
      tmdb_response = Net::HTTP.get_response(uri).body
      json_response = JSON(tmdb_response)
    end
  end
end
