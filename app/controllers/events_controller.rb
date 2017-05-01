require 'meetup_api'

class EventsController < ApplicationController
  def index
    api = MeetupApi.new

    Event.delete_all

    searchTerms = EventsSearchTerm.all

    searchTerms.each do |term|

      events = api.events(term.name)

      events.each do |event|

        name = event['name']
        time = Time.at((event['time'] + event['utc_offset'])/1000).utc
        venue = event['venue'].present? ? event['venue']['name'] : false
        url = event['link']
        group = event['group'].present? ? event['group']['urlname'] : false
        address = event['venue'].present? ? event['venue']['address_1'] : false

        if !venue || !group || !address
          next
        end

        e = Event.new(name: event['name'], date: Time.at((event['time'] + event['utc_offset'])/1000).utc,
                      venue: event['venue']['name'], url: event['link'], group: event['group']['urlname'],
                      address: event['venue']['address_1'])

        e.save!

      end

    end

    @events = Event.all
  end
end
