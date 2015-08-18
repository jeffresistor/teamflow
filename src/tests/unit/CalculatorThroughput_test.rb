require 'minitest/autorun'
require_relative '../../web/model/ThroughputCalculator.rb'

class TestCalculatorThroughput < Minitest::Test

    def setup
      @calculator = ThroughputCalculator.new
    end

    def test_that_wip_1_cycle_time_2_returns_throughput_point5
      assert_equal(0.5, @calculator.calculate_throughput_by_wip_and_cycle_time(1,2))
    end

    def test_that_wip_negative_1_cycle_time_2_returns_wip_error
      @calculator.calculate_throughput_by_wip_and_cycle_time(-1,2)
      assert_equal(true, $messages.has_key?('error_wip'))
    end

    def test_that_wip_4_cycle_time_0_returns_cycle_time_error
      @calculator.calculate_throughput_by_wip_and_cycle_time(4,0)
      assert_equal(true, $messages.has_key?('error_cycle_time'))
    end

  end