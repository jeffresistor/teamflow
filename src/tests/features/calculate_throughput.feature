Feature: Calculate Throughput

  Scenario: Calculate throughput by average wip and average cycle time with valid inputs
    Given an average wip of 1 work items in progress
    And an average cycle time of 2 days
    When I calculate throughput
    Then throughput should be 0.5 work items per day
