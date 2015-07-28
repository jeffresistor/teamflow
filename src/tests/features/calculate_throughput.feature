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

  Scenario Outline: Invalid parameters passed in throughput request by wip and cycle time
    Given an average wip of <wip> work items in progress
    And an average cycle time of <cycle time> days
    When I calculate throughput
    Then I should see the following error message: "<message>"
    Examples:
      | wip | cycle time |  message |
      | -1  | 2          |  Average Number of Work Items in Progress must be a positive, non-zero number |
      | 4   | 0          |  Average Cycle Time in days must be a positive, non-zero number               |
      |     | .34456     |  Average Number of Work Items in Progress must be a positive, non-zero number |

