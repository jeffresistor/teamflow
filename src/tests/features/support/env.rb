require 'capybara/cucumber'
require 'rubygems'
require 'rack/test'
require_relative '../../../web/main'

# Capybara Configuration
Capybara.app = Sinatra::Application

# Rack-Test Configuration
include Rack::Test::Methods
def app
  Sinatra::Application
end
