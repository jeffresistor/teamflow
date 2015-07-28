require 'minitest/autorun'
require_relative '../../web/model/ThroughputCalculator.rb'

class TestCalculatorThroughput < Minitest::Test

    def setup
      @calculator = ThroughputCalculator.new
    end

    def test_that_wip_1_cycle_time_2_returns_throughput_point5
      assert_equal(0.5, @calculator.calculate_throughput_by_wip_and_cycle_time(1,2))
    end

  end