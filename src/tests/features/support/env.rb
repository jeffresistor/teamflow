require 'rubygems'
require 'selenium-webdriver'
require_relative '../../../web/main'
require_relative '../../../web/model/ThroughputCalculator'

# @return [Object]
def start_selenium_driver
  unless $browser != nil
    #begin
    $browser = Selenium::WebDriver.for :firefox
    $browser.manage.window.maximize
    # set implicit timeout to 10 seconds
    $browser.manage.timeouts.implicit_wait = 10
    #rescue Exception => e
    # puts e.message
    #Process.exit(0)
    #end
  end
end
