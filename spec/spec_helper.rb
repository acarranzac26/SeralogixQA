# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'rubygems'
require 'rspec/expectations'
require 'capybara'
require 'capybara/rspec'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment.rb', __FILE__)

Capybara.register_driver :chrome_driver do |app|
  Selenium::WebDriver::Chrome.driver_path = '/Users/home/Documents/My automation/chromedriver'
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome_driver
Capybara.javascript_driver = :chrome_driver
Capybara.run_server = false
Capybara.app_host = 'https://sm-qa.seralogix.com/sign-in'
Capybara.default_max_wait_time = 60

# Rspec configuration
RSpec.configure do |config|
  config.include RSpec::Matchers
  config.include Capybara::DSL, type: :feature
end
