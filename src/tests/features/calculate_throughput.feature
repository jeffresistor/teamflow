Feature: Calculate Throughput

  Scenario: Calculate throughput by average wip and average cycle time with valid inputs
    Given an average wip of 1 work items in progress
    And an average cycle time of 2 days
    When I calculate throughput
    Then throughput should be 0.5 work items per day

  Scenario Outline: Calculate throughput by average wip and average cycle time with valid inputs
    Given an average wip of <wip> work items in progress
    And an average cycle time of <cycle time> days
    When I calculate throughput
    Then throughput should be <throughput> work items per day
    Examples:
      | wip 	| cycle time 	| throughput 	|
      | 7   	| 2				| 3.5			|
      | 18 		| 2 			| 9 			| 			