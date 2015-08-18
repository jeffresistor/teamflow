require_relative 'Validator.rb'
require_relative 'MessageManager.rb'

class ThroughputCalculator
  
  def initialize
    @throughput = 0
    @validator = Validator.new
    @message_manager = MessageManager.new
  end

  def calculate_throughput_by_wip_and_cycle_time(wip, cycle_time)
    # validate the wip and cycle time params and raise error messages if necessary
    if !@validator.is_positive_number(cycle_time) or !@validator.is_positive_number(wip)
      @message_manager.add_message_with_key('error_cycle_time', 'Average Cycle Time in days must be a positive, non-zero number') unless @validator.is_positive_number(cycle_time)
      @message_manager.add_message_with_key('error_wip', 'Average Number of Work Items in Progress must be a positive, non-zero number') unless @validator.is_positive_number(wip)
    # if parameters are valid, calculate throughput and place results into the results hash
    else
      @throughput = wip.to_f / cycle_time.to_f
    end
  end
end
