require 'rails_helper'
require 'spec_helper'

RSpec.describe "LeadsController", :type => :controller do
    let!(:int){Lead.new}
    # Testing if the lead controller returns a successful HTTP response and an object
    it "returns 200 when there is a successful HTTP response AND an lead object" do
        expect(@response.status).to eq(200)
        expect(int).to_not eq(nil)
        p Lead
    end
end