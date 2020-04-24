require 'rails_helper'
require 'spec_helper'

RSpec.describe "InterventionsController", :type => :controller do
    let!(:int){Intervention.new}
    # Testing if the interventions controller returns a successful HTTP response and an object
    it "returns 200 when there is a successful HTTP response AND an intervention object" do
        expect(@response.status).to eq(200)
        expect(int).to_not eq(nil)
        p Intervention
    end
end