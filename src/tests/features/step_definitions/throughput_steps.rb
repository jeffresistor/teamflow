Given(/^an average wip of (.*?) work items in progress$/) do |wip|
  @wip = wip.to_f
end

Given(/^an average cycle time of (.*?) days$/) do |cycle_time|
  @cycle_time = cycle_time.to_f
end

When(/^I calculate throughput$/) do
  calculator = ThroughputCalculator.new
  @throughput = calculator.calculate_throughput_by_wip_and_cycle_time(wip = @wip, cycle_time = @cycle_time)
end

Then(/^throughput should be (.*?) work items per day$/) do |expected_throughput|
  expect(@throughput).to eq(expected_throughput.to_f)
end

Then(/^I should see the following error message: "([^"]*)"$/) do |expected_message|
  expect($messages.has_value?(expected_message)).to eq(true)
end