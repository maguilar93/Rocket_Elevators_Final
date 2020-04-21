require 'rails_helper'

RSpec.describe 'Streamer' do 
    # describe 'GET /weather' do
    #     it 'returns a weather message' do
    #         get('/weather')
    #         json = JSON.parse(response.body)
    #         expect(json['weather']).to eql('ok')
    #     end
    # end

    feature 'getContent' do
        it 'return the weather in Montreal' do
        uri = URI('https://api.openweathermap.org/data/2.5/forecast?id=6077243&APPID=f2289bc932be7c633fdf061e35220125')
    
        response = Net::HTTP.get(uri)
    
        expect(response).to be_an_instance_of(String)
        end
    end
    
        
end



# <div id="openweathermap-widget-11"></div>
# <script src='//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/d3.min.js'></script><script>window.myWidgetParam ? window.myWidgetParam : window.myWidgetParam = [];  window.myWidgetParam.push({id: 11,cityid: '6077243',appid: '18bdae0ee2c90ca668b232310b679c23',units: 'metric',containerid: 'openweathermap-widget-11',  });  (function() {var script = document.createElement('script');script.async = true;script.charset = "utf-8";script.src = "//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/weather-widget-generator.js";var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(script, s);  })();</script>