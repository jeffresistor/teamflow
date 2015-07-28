require_relative 'Validator.rb'
require_relative 'MessageManager.rb'

class ThroughputCalculator
  
  def initialize
    @throughput = 0
  end

  def calculate_throughput_by_wip_and_cycle_time(wip, cycle_time)
    @throughput = wip.to_f / cycle_time.to_f
    return @throughput 
  end

end
