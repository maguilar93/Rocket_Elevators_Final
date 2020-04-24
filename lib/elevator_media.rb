# require 'open_weather'
# require 'json'
require 'http'

module ElevatorMedia
  class Streamer
      def initialize
        # @datetime    = data.dt_txt
        # @temp        = data.main.temp
        # @description = data.weather.first.description
      end

      def self.getContent
        # uri = HTTP.get('https://api.openweathermap.org/data/2.5/forecast?id=6077243&APPID=f2289bc932be7c633fdf061e35220125')
        uri = HTTP.get('http://api.openweathermap.org/data/2.5/weather?q=Montreal,CA&appid=f2289bc932be7c633fdf061e35220125&units=metric')
        # raw_data = Faraday.get("https://api.openweathermap.org/data/2.5/forecast?id=6077243&APPID=f2289bc932be7c633fdf061e35220125").body
        # weather_data = JSON.parse(raw_data, object_class: OpenStruct)

        # response = Net::(uri).to_s
        obj = JSON.parse(uri)['main']['temp']
        myhtml = "The weather is #{obj}C."
        puts myhtml
        return myhtml
    end
  end
end