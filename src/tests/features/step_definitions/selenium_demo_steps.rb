Given /^I navigate to "(.*?)"$/ do |url|
  $browser.navigate.to(url)
end

Then /^the page title should be "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

And /^a link having text "(.*?)" should be present$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end