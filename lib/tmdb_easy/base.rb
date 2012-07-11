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

        def self.url_base
            'http://api.themoviedb.org/3/'
        end


        def self.api_call
        end

  end
end
