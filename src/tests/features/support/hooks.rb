#Cucumber provides a number of hooks which allow us to run blocks at various points in the Cucumber test cycle

# close the selenium webdriver browser if one is open
at_exit do
  $browser.quit unless $browser == nil
end

#Tagged hooks
Before('@browser') do
  unless $browser != nil
    begin
      $browser = Selenium::WebDriver.for :firefox
      $browser.manage.window.maximize
      # set timeout to 10 seconds
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    rescue Exception => e
      puts e.message
      Process.exit(0)
    end
  end
end