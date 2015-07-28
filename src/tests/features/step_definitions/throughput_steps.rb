Given(/^an average wip of (.*?) work items in progress$/) do |wip|
  @wip = wip.to_f
  #puts "The value of @wip is #{@wip}"
end

Given(/^an average cycle time of (.*?) days$/) do |cycle_time|
  @cycle_time = cycle_time.to_f
  #puts "The value of @cycle_time is #{@cycle_time}"
end

When(/^I calculate throughput$/) do
  # instantiate a ThroughputCalculator and pass it @wip and @cycle_time to get a throughput result
  calculator = ThroughputCalculator.new
  @throughput = calculator.calculate_throughput_by_wip_and_cycle_time(wip = @wip, cycle_time = @cycle_time)
  #puts "The value of @throughput is #{@throughput}"
end

Then(/^throughput should be (.*?) work items per day$/) do |expected_throughput|
  #puts "We want to make sure @throughput, which is #{@throughput}, is equal to #{expected_throughput}"
  expect(@throughput).to eq(expected_throughput.to_f)
end

Then(/^I should see the following error message: "([^"]*)"$/) do |expected_message|
  expect(@error_message).to eq(expected_message)
end