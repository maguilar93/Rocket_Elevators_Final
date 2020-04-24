# require 'rails_helper'
require 'elevator_media.rb'

describe 'Streamer' do 
    # describe 'GET /weather' do
    #     it 'returns a weather message' do
    #         get('/weather')
    #         json = JSON.parse(response.body)
    #         expect(json['weather']).to eql('ok')
    #     end
    # end

    describe 'getContent' do
        context "GET /weather ?" do
            it 'return the weather in Montreal' do        
                expect(ElevatorMedia::Streamer.getContent).to be_kind_of(String)
            end
        end
    end
    
        
end



