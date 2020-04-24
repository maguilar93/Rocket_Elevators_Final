require 'rails_helper'

describe 'AdminPanel', :type => :feature do
    context "Admin Login Connection" do
        it "Redirect to admin dashboard" do
            visit 'admin/login'
            fill_in 'Email', with: 'admin@example.com'
            fill_in 'Password', with: 'password' do
                expect(page).to have_text('Dashboard')
            end
        end
    end
 end