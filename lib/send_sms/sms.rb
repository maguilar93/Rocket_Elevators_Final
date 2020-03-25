require 'twilio-ruby'

module SendSms
    class Sms
        def initialize
        end

        def send_sms()
            account_sid = ENV["TWILIO_ACCOUNT_SID"]
            auth_token =ENV["TWILIO_AUTH_TOKEN"]
            client = Twilio::REST::Client.new(account_sid, auth_token)

            from = ENV["TWILIO_PHONE_NUMBER"] # Your Twilio number
            to = '+15149138302' # Your mobile phone number

            client.messages.create(
            from: from,
            to: to,
            body: "Hello World!"
            )
        end

        def intervention()
            if status == "Intervention"
                return true
        end
    end
end