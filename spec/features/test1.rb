require 'spec_helper'

feature "As a google user ", :js => true do 
  
  given (:hi) { 'Hi Folks! This is working' }

  scenario "I am able to search content" do
    visit('/')
    fill_in('lst-ib', :with => hi)
    sleep(15)
  end
end