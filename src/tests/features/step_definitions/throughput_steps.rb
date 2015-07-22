Given(/^an average wip of (\d+) work items in progress$/) do |wip|
  @wip = wip
  puts "The value of @wip is #{@wip}"
end

Given(/^an average cycle time of (\d+) days$/) do |cycle_time|
  @cycle_time = cycle_time
  puts "The value of @cycle_time is #{@cycle_time}"
end

When(/^I calculate throughput$/) do
  @throughput = 78987
  puts "The value of @throughput is #{@throughput}"
end

Then(/^throughput should be (.*?) work items per day$/) do |expected_throughput|
  puts "We want to make sure @throughput, which is #{@throughput} is equal to #{expected_throughput}"
  expect(@throughput.to_f).to eq(expected_throughput.to_f)
end