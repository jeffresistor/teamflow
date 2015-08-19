#Cucumber provides a number of hooks which allow us to run blocks at various points in the Cucumber test cycle

# close the selenium webdriver browser if one is open
at_exit do
  $browser.quit unless $browser == nil
end

#Tagged hooks
Before('@browser') do
  start_selenium_driver
end