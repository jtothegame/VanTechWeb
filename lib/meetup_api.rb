require 'httparty'

class MeetupApi
  API_URL = 'https://api.meetup.com/'


  def events(group)
    response = HTTParty.get("#{API_URL}#{group}/events")
    JSON.parse(response.body)
  end
end