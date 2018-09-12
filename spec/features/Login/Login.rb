require 'spec_helper'

feature "As an Admin user ", :js => true do 
  
  given (:admin_user) { 'antaria+1@gmail.com' }
  given (:admin_password) {'PWD12345'}

  scenario "I am able to login into Seralogix" do
    visit('/')
    fill_in('mat-input-1', :with => admin_user)
    fill_in('mat-input-2', :with => admin_password)
    sleep(15)
    click_on(sign-in-btn)
  end
end