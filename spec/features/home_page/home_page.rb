require 'spec_helper'

feature "As an Principal Investigator user ", :js => true do 
  
  given (:admin_user) { 'antaria+1@gmail.com' }
  given (:admin_password) {'PWD123456'}
  given (:expected_label) {'Welcome'}

  scenario "I am able to create a study" do
    visit('/sign-in')
    fill_in('mat-input-1', :with => admin_user)
    fill_in('mat-input-2', :with => admin_password)
    click_on('sign-in-btn')
    label = find('mat-toolbar > span.BodyText--medium')
    expect(label).to have_content(expected_label), 'The login failed'
  end

 
end