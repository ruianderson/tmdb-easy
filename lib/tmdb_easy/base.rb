module TmdbEasy
  class Base
    @@api_key = ""
    @@api_response = {}

    def self.api_key
      @@api_key
    end

    def self.api_key=(api_key)
      @@api_key = api_key
    end

    def self.base_api_url
      'http://api.themoviedb.org/3/'
    end
  end
end
