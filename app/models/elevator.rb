require 'send_sms/sms'

class Elevator < ApplicationRecord
    belongs_to :column

    
    after_update :send_sms, if: :intervention?


    def send_sms()
        tech = self.column.battery.building.tech_full_name
        id = self.id
        sn = self.serial_number
        status = self.status
        sms = SendSms::Sms.new
        sms.send_sms(tech, id, sn, status)
    end

    def intervention?
        self.status == "Intervention"
    end

end      
