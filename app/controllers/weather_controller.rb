class WeatherController < ApplicationController

  def trigger_weather_api
    state = params[:state]
    city = params[:city]

    puts "WUNDERGROUND_API_KEY:", ENV["WUNDERGROUND_API_KEY"]

    weather_api_key = ENV["WUNDERGROUND_API_KEY"]

    fullQuery = "http://api.wunderground.com/api/b415bc53bd31cf12/forecast/q/#{state}/#{city}.json"

    puts "fullQuery:", [fullQuery]

    data = HTTParty.get(fullQuery)
    render json:data
  end
end
