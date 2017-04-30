require 'httparty'

class NewsApi
  API_URL = 'https://newsapi.org/v1/articles?source='
  API = '&apiKey='

  def articles(source)
    response = HTTParty.get("#{API_URL}#{source}#{API}#{ENV['NEWS_API_KEY']}")
    JSON.parse(response.body)
  end
end