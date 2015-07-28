
class Validator
  
  def initialize
    @valid_param = false
  end

  def is_float(string_to_evaluate)
    valid = true
    begin
      Float(string_to_evaluate)
    rescue
      valid = false
    end
    valid
  end

  def is_positive_number(string_to_evaluate)
    valid = false
    if is_float(string_to_evaluate) == true && string_to_evaluate.to_f > 0
      valid = true
    end
    valid
  end
    
end