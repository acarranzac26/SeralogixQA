require 'spec_helper'

feature "As an Admin user ", :js => true do 
  
  given (:admin_user) { 'antaria+1@gmail.com' }
  given (:admin_password) {'PWD123456'}
  given (:expected_label) {'Welcome'}

  scenario "I am able to login into Seralogix" do
    visit('/')
    fill_in('mat-input-1', :with => admin_user)
    fill_in('mat-input-2', :with => admin_password)
    click_on('sign-in-btn')
    label = find('mat-toolbar > span.BodyText--medium')
    expect(label).to have_content(expected_label), 'The login failed'
  end

  # scenario "I am able to login into Seralogix using Keep me signed in option" do
  #   visit('/')
  #   fill_in('mat-input-1', :with => admin_user)
  #   fill_in('mat-input-2', :with => admin_password)
  #   check(mat-checkbox-1)
  #   sleep(15)
  #   click_on(sign-in-btn)
  # end
end