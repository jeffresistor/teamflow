Given(/^I navigate to "(.*?)"$/) do |url|
  $browser.navigate.to(url)
end

Then(/^the page title should be "([^"]*)"$/) do |expected_title|
  actual_title = $browser.title
  expect(actual_title).to eq(expected_title)
end

Then(/^a link having text "([^"]*)" should be present$/) do |expected_link_text|
  actual_link = $browser.find_element(:link_text, expected_link_text)
  expect(actual_link).not_to be_nil
end

When(/^I select "([^"]*)" option from the Filter By menu$/) do |option_to_select|
  filter_by_menu = Selenium::WebDriver::Support::Select.new($browser.find_element(:id, "edit-topic-id"))
  filter_by_menu.select_by(:text, option_to_select)
end

When(/^I enter "([^"]*)" into the search field$/) do |search_parameters|
  search_field = $browser.find_element(:id, "edit-search-q")
  search_field.send_keys(search_parameters)
end

Given(/^I click the link with text "([^"]*)"$/) do |link_to_click|
  link = $browser.find_element(:link_text, link_to_click)
  link.click
end

When(/^I click the "Go" button$/) do
  submit_button = $browser.find_element(:id, "edit-submit-immigration-form-list")
  submit_button.click
end

Then(/^I should see text "([^"]*)"$/) do |expected_text|
  expected_text_present = $browser.page_source.include? expected_text
  expect(expected_text_present).to be_truthy
end