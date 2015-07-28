class ThroughputCalculator
  
  def initialize
    @throughput = 0
  end

  def calculate_throughput_by_wip_and_cycle_time(wip, cycle_time)
    @throughput = wip / cycle_time
    return @throughput 
  end

end