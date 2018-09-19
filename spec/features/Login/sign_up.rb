require 'spec_helper'

feature "As a new Organization", :js => true do 
  
  given (:organization_name) { 'Test University' }
  given (:admin_user) { 'antaria+1@gmail.com' }
  given (:admin_password) {'PWD12345'}

  scenario "I am able to create Seralogix Admin user " do
    visit('/sign-up')
    fill_in('mat-input-1', :with => organization_name)
    select('UNIVERSITY' :from =>'mat-select-0')
    fill_in('mat-input-2', :with => admin_user)
    fill_in('mat-input-3', :with => admin_password)
    check on('mat-checkbox-1')
    sleep(15)
    click_on(sign-up-btn)
  end

   scenario "I am able to verify values available in Organization Type filter " do
    visit('/sign-up')
    fill_in('mat-input-1', :with => organization_name)
    select('UNIVERSITY' :from =>'mat-select-0')
    fill_in('mat-input-2', :with => admin_user)
    fill_in('mat-input-3', :with => admin_password)
    check on('mat-checkbox-1')
    sleep(15)
    click_on(sign-up-btn)
end