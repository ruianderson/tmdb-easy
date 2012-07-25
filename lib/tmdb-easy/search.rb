module TmdbEasy
  class Search < Base
    def self.movie(keyword, lang = 'en', adult = false)
      action_request = base_api_url + "search/movie?api_key=#{@@api_key}&query=#{keyword}&language=#{lang}&include_adult=#{adult}"

      response = api_response(action_request)
      movies = DeepOpenStruct.load(response).results
    end

    def self.person(keyword, adult = false)
      action_request = base_api_url + "search/person?api_key=#{@@api_key}&query=#{keyword}&include_adult=#{adult}"

      response = api_response(action_request)
      people = DeepOpenStruct.load(response).results
    end

    def self.company(keyword)
      action_request = base_api_url + "search/company?api_key=#{@@api_key}&query=#{keyword}"

      response = api_response(action_request)
      companies = DeepOpenStruct.load(response).results
    end
  end
end
