require 'send_sms/sms'

class Elevator < ApplicationRecord
    belongs_to :column

    
    after_update :send_sms, if: :intervention?


    def send_sms()
        t = self.column.battery.building.tech_full_name
        sms = SendSms::Sms.new
        sms.send_sms(t)
    end

    def intervention?
        self.status == "Intervention"
    end

end      
