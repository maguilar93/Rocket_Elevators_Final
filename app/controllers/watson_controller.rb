class WatsonController < ApplicationController

    def welcome
        require "ibm_watson/authenticators"
        require "ibm_watson/text_to_speech_v1"
        include IBMWatson
    
        authenticator = Authenticators::IamAuthenticator.new(
        apikey: ENV["TEXT_TO_SPEECH_APIKEY"]
        )
        text_to_speech = TextToSpeechV1.new(
        authenticator: authenticator
        )
        text_to_speech.service_url = ENV["TEXT_TO_SPEECH_URL"]

        employee_first_name = current_user.Employee.first_name
        employee_last_name = current_user.Employee.last_name
        total_elevators = Elevators.count
        total_buildings = Buildings.count
        total_customers = Customers.count
        total_quotes = Quotes.count
        total_leads = Leads.count
        total_batteries = Batteries.count
        # total_cities = Customers.count ('city', :distinct => true)

        File.open("hello_world.wav", "wb") do |audio_file|
            response = text_to_speech.synthesize(
              text: "Hello world",
              accept: "audio/wav",
              voice: "en-US_AllisonVoice"
            )
            audio_file.write(response.result)
        end
    end
end
