require 'httparty'

class NewsApi
  API_URL = 'https://newsapi.org/v1/articles?source='
  API_KEY = '&apiKey=2e325d3b12b642f59ca67df82e94c329'

  def articles(source)
    response = HTTParty.get("#{API_URL}#{source}#{API_KEY}")
    JSON.parse(response.body)
  end
end