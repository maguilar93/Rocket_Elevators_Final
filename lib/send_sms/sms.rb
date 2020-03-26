require 'twilio-ruby'

module SendSms
    class Sms
        def initialize
        end

        def send_sms(technician)
            account_sid = ENV["TWILIO_ACCOUNT_SID"]
            auth_token =ENV["TWILIO_AUTH_TOKEN"]
            client = Twilio::REST::Client.new(account_sid, auth_token)

            from = ENV["TWILIO_PHONE_NUMBER"] # Your Twilio number
            to = '+14385057205' # Your mobile phone number

            client.messages.create(
            from: from,
            to: to,
            body: "The elevator needs an intervention. The technician assigned is: #{technician}."
            )
        end

        def intervention?()
            self.status == "Intervention"
        end
    end
end