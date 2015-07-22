Feature: Calculate Throughput

  Scenario Outline: Calculate throughput by average wip and average cycle time with valid inputs
    Given an average wip of <wip> work items in progress
    And an average cycle time of <cycle time> days
    When I calculate throughput
    Then throughput should be <throughput?> work items per day
    Examples:
      | wip | cycle time 	| throughput? 			|
      | 1 	| 2 			| 0.5 					|
      | 1.1 | 0.0004 		| 2750 					|
      | 5.4 | 24.789 		| 0.21783855742466415 	|