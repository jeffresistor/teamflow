###To install the demo project and required Ruby version and gems:
---------------------------------------------------------------
1.  Install Firefox
2.  Install Git using the instructions appropriate for your system at http://www.git-scm.com/downloads
3.  Install Ruby 1.9.3
  - **Linux / Mac Users:**
    - Install Ruby version 1.9.3-p551 using the instructions appropriate for your system at [https://www.ruby-lang.org/en/documentation/installation](https://www.ruby-lang.org/en/documentation/installation)
  - **Windows Users:** 
    - Install Ruby 1.9.3-p551 using the Ruby Installer for Windows at http://rubyinstaller.org/downloads/
    - Install the Ruby DevKit version tdm-32-4.5.2 at http://rubyinstaller.org/downloads/ using the installation instructions at https://github.com/oneclick/rubyinstaller/wiki/Development-Kit. Be sure to test the installation as described in the instructions.
4.  **Windows users** - Install Ansicon 1.66 from https://github.com/adoxa/ansicon/releases using the instructions at http://qastuffs.blogspot.com/2011/02/how-to-install-ansicon-for-cucumber-to.html. If your Command Terminal stops executing Git and Ruby after installing Ansicon, exclude the Ansicon installation directory from Windows Defender using the instructions at http://answers.microsoft.com/en-us/protect/wiki/protect_defender-protect_scanning/how-to-exclude-a-filefolder-from-windows-defender/f32ee18f-a012-4f02-8611-0737570e8eee
5.  Clone the teamflow GitHub project to your working directory using the command `git clone https://github.com/jeffresistor/teamflow.git` in your terminal
6. Checkout the v1.0 tag to a branch using the command `git checkout -b version_1 v1.0` in your terminal
7.  Install Bundler using the command `gem install bundler` in your terminal
8.  CD to the root of /teamflow in your terminal
9.  Install the required gems using the command `bundle install` in your terminal
10.  CD to the /teamflow/src/tests/ directory in your terminal
11. Run cucumber using the command `cucumber` in your terminal
12. Verify the terminal output is as shown below:

```
Feature: Calculate Throughput

  Scenario: Calculate throughput by average wip and average cycle time with valid inputs # features/calculate_througput.feature:3
    Given an average wip of 1 work items in progress                                     # features/calculate_througput.feature:4
    And an average cycle time of 2 days                                                  # features/calculate_througput.feature:5
    When I calculate throughput                                                          # features/calculate_througput.feature:6
    Then throughput should be 0.5 work items per day                                     # features/calculate_througput.feature:7

1 scenario (1 undefined)
4 steps (4 undefined)
0m0.052s

You can implement step definitions for undefined steps with these snippets:

Given(/^an average wip of (\d+) work items in progress$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^an average cycle time of (\d+) days$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I calculate throughput$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^throughput should be (\d+)\.(\d+) work items per day$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
```
